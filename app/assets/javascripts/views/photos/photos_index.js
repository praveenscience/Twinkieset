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
    // 'click .sort-photo-button': 'openSortOptions',
    'click .sort-a-z': 'sortByFilename',
    'click .sort-a-z-reverse': 'sortByFilenameReverse',
    'click .sort-upload': 'sortByUploadDate',
    'click .sort-upload-reverse': 'sortByUploadDateReverse',
    // 'click .sort-photo-button': 'sortPhotos'
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
        var date_to_s = image.image_metadata.CreateDate.split("-")[0].split(" ").join(":").split(":");
        var convertedDate = new Date(date_to_s[0], date_to_s[1], date_to_s[2], date_to_s[3], date_to_s[4], date_to_s[5]);
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

    this.subviews('.photo-items').each(function (photo, index, collection) {
      photo.remove();
    });
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
    arr.splice(0);
  },


  addPhotoView: function (photo) {
    var subview = new TwinkieSetApp.Views.AlbumsShowPhotoItem({
      model: photo
    });
    this.addSubview('.photo-items', subview);
  },

  removePhotoView: function (photo) {
    this.removeModelSubview('.photo-items', photo);
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
  },

});
