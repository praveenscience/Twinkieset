TwinkieSetApp.Views.PhotosIndex = Backbone.CompositeView.extend({

  template: JST['photos/index'],

  initialize: function () {
    TwinkieSetApp.selectedPhotosArr = [];
    this.listenTo(this.model, 'sync', this.render);
    this.listenTo(this.collection, "add", this.addPhotoView);
    this.listenTo(this.collection, 'remove', this.removePhotoView);
    this.collection.each(this.addPhotoView.bind(this));

  },

  events: {
    'click .new-photo-button': 'upload',
    "click .trash-photos-button": "showPhotoDeleteModal",
    'click .select-all': 'selectAllPhotos',
    'click .clear-selection': 'clearSelection',
    'sortstart': "addStyling", // add dragged class
    'sortstop': "saveOrds",
    'updateSort': "updateSort",
    'click .sort-photo-button': 'openSortOptions',
    'click .hide-filenames': 'hideFilenames',
    'click .show-filenames': 'showFilenames',

    'click .sort-a-z': 'sortByFilename',
    'click .sort-a-z-reverse': 'sortByFilenameReverse',
    'click .sort-upload': 'sortByUploadDate',
    'click .sort-upload-reverse': 'sortByUploadDateReverse',
    'click .sort-date-taken': 'sortByDateTaken',
    'click .sort-date-taken-reverse': 'sortByDateTakenReverse',
    'click .sort-random': 'sortByRandom',

    // 'mouseover .hide-filenames': 'hideFilenameTip',
    // 'mouseover .show-filenames': 'showFilenameTip',
    // 'mouseout .hide-filenames, .show-filenames': 'hideAllTip'
    // 'click .sort-photo-button': 'sortPhotos'
  },

  hideFilenameTip: function (event) {
    $('.hide-filename-tip').addClass('selected');
  },

  showFilenameTip: function (event) {
    $('.show-filename-tip').addClass('selected');
  },

  hideAllTip: function (event) {
    $('.show-filename-tip').removeClass('selected');
    $('.hide-filename-tip').removeClass('selected');
  },

  hideFilenames: function (event) {
    $('.photo-filename').fadeOut();
    $('.hide-filenames').addClass('selected');
    $('.show-filenames').removeClass('selected');
  },

  showFilenames: function (event) {
    $('.photo-filename').fadeIn();
    $('.hide-filenames').removeClass('selected');
    $('.show-filenames').addClass('selected');
  },

  sortByFilename: function (event) {
    this.sortPhotos(event, 'file_name');
  },

  sortByFilenameReverse: function (event) {
    this.sortPhotos(event, 'file_name', true);
  },

  sortByUploadDate: function (event) {
    this.sortPhotos(event, 'created_at');
  },

  sortByUploadDateReverse: function (event) {
    this.sortPhotos(event, 'created_at', true);
  },

  sortByDateTaken: function (event) {
    this.sortPhotos(event, 'date_taken');
  },

  sortByDateTakenReverse: function (event) {
    this.sortPhotos(event, 'date_taken', true);
  },

  sortByRandom: function (event) {
    this.sortPhotos(event, 'random', true);
  },


  openSortOptions: function (event) {
    $('.sort-by-options').toggle();
  },

  updateSort: function (event, droppedModel, position) {
    console.log(droppedModel.attributes);
    console.log("position " + position);
    this.model.photos().remove(droppedModel, { silent: true});
    this.model.photos().each(function (model, idx) {
      var ordinal = idx;
      if (idx >= position) {
        ordinal += 1;
      }
      model.set('order', ordinal);
      model.save();
    });

    droppedModel.set('order', position);
    droppedModel.save();
    this.model.photos().add(droppedModel, { silent: true });
    this.model.photos().sort();

  },

  saveOrds: function (event, ui) {
    ui.item.trigger('drop', ui.item.index()); // ui.item finds its own view
  },

  selectAllPhotos: function (event) {
    // $('.photo-items')
    // debugger;
    TwinkieSetApp.selectedPhotosArr = []; // empty out the array
    var photosCollection = this.collection;
    $('.photo-item').each(function (idx, photoli) {
      var imageURL = $(photoli).find('img').attr("src");

      var photoModel = photosCollection.find(function(photo) {
        return photo.get("image_url") === imageURL;
      });

      TwinkieSetApp.selectedPhotosArr.push(photoModel);
      $(photoli).removeClass('not-selected').addClass('selected');

    }.bind(this));

    $('.number-of-selected').html(photosCollection.length + " selected");
    // console.log(TwinkieSetApp.selectedPhotosArr);
  },


  clearSelection: function (event) {
    // $('.photo-items')
    // debugger;
    TwinkieSetApp.selectedPhotosArr = []; // empty out the array
    $('.photo-item').removeClass('selected').addClass('not-selected');

    $('.number-of-selected').html("0 selected");
    // console.log(TwinkieSetApp.selectedPhotosArr);
  },


  showPhotoDeleteModal: function (event) {
    // console.log(TwinkieSetApp.selectedPhotosArr);
    var deleteView = new TwinkieSetApp.Views.PhotosDelete();
    $('body').append(deleteView.render().$el);
  },


  upload: function (e) {
    TwinkieSetApp.selectedPhotosArr = [];
    $('.photo-item').addClass('not-selected').removeClass('selected');
    $('.number-of-selected').html("0 selected");
    // console.log(TwinkieSetApp.selectedPhotosArr);
    cloudinary.openUploadWidget(CLOUDINARY_SETTINGS,
      function(error, payload) {
        if (!error) {
          this.successfulUpload(payload);
        }
    }.bind(this));
  },


  successfulUpload: function (payload) {
    payload.forEach(function(image) {
        var convertedDate = new Date(Date.now());
        if (image.image_metadata.CreateDate) {
          date_to_s = image.image_metadata.CreateDate.split("-")[0].split(" ").join(":").split(":");
          convertedDate = new Date(date_to_s[0], date_to_s[1], date_to_s[2], date_to_s[3], date_to_s[4], date_to_s[5]);
        }

        var imageData = {
          "photo": {
            "image_url": image.url,
            "file_name": image.original_filename,
            "subalbum_id": this.model.id,
            "thumb_url": image.thumbnail_url,
            "medium_url": image.eager[0].url,
            "date_taken": convertedDate
          }
        };
        var photo = new TwinkieSetApp.Models.Photo(imageData);
        photo.save({}, {
          success: function () {
            this.collection.add(photo);
          }.bind(this)
        });
    }.bind(this));
  },


  // TODO able to sort photos

  // events: {
  //   'click .sort-photo-button': 'sortPhotos'
  // },
  //
  // sortPhotos: function() {
  //   console.log('sorting');
  //
  //   // resortSubviews and pass in css selector and the comparator
  //   this.collection.comparator = 'image_url';
  //   this.render();
  // },

  sortPhotos: function (event, value, reverse) {
    // delete this.subviews('.photo-items'); // remove the actual selector
    // $('.photo-items').html("");
    $('.sort-by-options').hide(); // immediately hide the options list
    this.subviews('.photo-items').each(function (photo, index, collection) {
      photo.remove();
    });

    if (value === 'random') {
      var updatedCollection = [];
      var lengthOfCollection = this.collection.length;
      var randomized = this.shuffle(lengthOfCollection);
      randomized.forEach(function(num) {
        updatedCollection.push(this.collection.models[num]);
      }.bind(this))

      updatedCollection.forEach(function(photo, index, collection) {
        this.addPhotoView(photo);
      }.bind(this));

      updatedCollection.forEach(function(photo, index, collection) {
        photo.set('order', index);
        photo.save();
      });

      return;
    }
    // this.subviews('.photo-items').splice(0);
    // this.subviews('.photo-items').splice(0); // remove all photos there
    this.collection.comparator = value; // sort by id
    this.collection.sort();


    if (reverse) {
      this.collection.models.reverse().forEach(this.addPhotoView.bind(this));

      this.collection.models.reverse().forEach(function(photo, index, collection) {
        photo.set('order', index);
        photo.save();
      });
    } else {
      this.collection.models.forEach(this.addPhotoView.bind(this));

      this.collection.models.forEach(function(photo, index, collection) {
        photo.set('order', index);
        photo.save();
      });
    }

    // use this to console log order
    var arr = [];
    this.subviews('.photo-items').each(function (photo, index, collection) {
      // console.log(photo.model.get('created_at'));
      arr.push(photo.model.get('created_at'));
    });
    console.log(arr);
    // arr.splice(0);
  },


  // returns an random array of 0 to length
  shuffle: function (length) {
    var newArray = [];

    while (newArray.length < length) {

      var randomPos = Math.round(Math.random()*(length-1));
      if (newArray.indexOf(randomPos) === -1) {
        newArray.push(randomPos);
      }
    }

    return newArray;
  },

  addPhotoView: function (photo) {
    if (this.collection.length > 0) {
      $('.no-photos').hide();
    }
    var subview = new TwinkieSetApp.Views.AlbumsShowPhotoItem({
      model: photo
    });
    this.addSubview('.photo-items', subview);
  },

  removePhotoView: function (photo) {
    this.removeModelSubview('.photo-items', photo);
    if (this.collection.length === 0) {
      $('.no-photos').show();
      $('.photo-buttons-container').hide();
    }
  },

  displayZeroPhotos: function () {
    $('.photo-items').html("no photos!");
  },

  render: function () {
    // this.collection.comparator = 'image_url';
    var content = this.template({
      subalbum: this.model
    });
    this.$el.html(content);
    this.attachSubviews();
    this.onRender();
    return this;
  },

  onRender: function(){
    $('.photo-items').sortable();
    if (this.collection.length === 0) {
      $('.no-photos').show();
    } else {
      $('.no-photos').hide();
    }
  },

});
