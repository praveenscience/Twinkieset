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
    'click .select-all': 'selectAllPhotos'
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
    console.log(TwinkieSetApp.selectedPhotosArr);
  },

  showPhotoDeleteModal: function (event) {
    alert("here");
    console.log(TwinkieSetApp.selectedPhotosArr);
    var deleteView = new TwinkieSetApp.Views.PhotosDelete();
    $('body').append(deleteView.render().$el);
  },


  upload: function (e) {
    TwinkieSetApp.selectedPhotosArr = [];
    $('.photo-item').addClass('not-selected').removeClass('selected');
    $('.number-of-selected').html("0 selected");
    console.log(TwinkieSetApp.selectedPhotosArr);
    cloudinary.openUploadWidget(CLOUDINARY_SETTINGS,
      function(error, payload) {
        if (!error) {
          this.successfulUpload(payload);
        }
    }.bind(this));
  },

  successfulUpload: function (payload) {
    payload.forEach(function(image) {
        var imageData = {
          "photo": {
            "image_url": image.url,
            "file_name": image.original_filename,
            "subalbum_id": this.model.id
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
    return this;
  },

  onRender: function(){
    this.delegateEvents();
  },

});
