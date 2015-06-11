TwinkieSetApp.Views.PhotosIndex = Backbone.CompositeView.extend({

  template: JST['photos/index'],

  initialize: function () {
    this.listenTo(this.collection, 'sync', this.render);
    this.listenTo(this.collection, "add", this.addPhotoView);
    this.collection.each(this.addPhotoView.bind(this));
  },

  events: {
    'click .new-photo-button': 'upload'
  },

  upload: function (e) {
    cloudinary.openUploadWidget(CLOUDINARY_SETTINGS,
      function(error, payload) {
        if (!error) {
          this.successfulUpload(payload);
        }
    }.bind(this));
  },

  successfulUpload: function (payload) {
    var notUploaded = [];
    payload.forEach(function(image) {
      if (image.format === "jpg" || image.format === "png" || image.format ==="gif") {
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
      } else {
        // if not an image
        notUploaded.push(image.original_filename);

      }
    }.bind(this));


    $('.upload-errors .files').html(notUploaded.join(", "));
    $('.upload-errors').show();
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

  render: function () {
    // this.collection.comparator = 'image_url';
    var content = this.template({
      subalbum: this.model
    });
    this.$el.html(content);
    this.attachSubviews();
    return this;
  }

});
