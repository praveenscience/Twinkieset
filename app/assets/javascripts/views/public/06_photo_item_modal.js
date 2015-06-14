TwinkieSetApp.Views.PhotoItemModal = Backbone.View.extend({
  template: JST['public/06_photo_item_modal'],
  className: 'gallery-modal',

  initialize: function () {
    $('body').keyup(this.hideGalleryModal.bind(this));
  },

  events: {
    'click .next-image': 'displayNextImage',
    'click .prev-image': 'displayPreviousImage'
  },


  displayNextImage: function (event) {
    this.displayImage("next");
  },

  displayPreviousImage: function (event) {
    this.displayImage("previous");
  },

  displayImage: function (direction) {
    var difference = 0;
    if (direction === "next") {
      difference = 1;
    } else if (direction === "previous") {
      difference = -1;
    }
    var currentImage = this.model;
    var nextImage = this.model;
    this.collection.forEach(function(photo, idx, allPhotos) {
      if (currentImage === photo) {
        var newIndex = idx + difference;

        // ensure photos wrap
        if (newIndex > allPhotos.length - 1) {
          newIndex = 0;
        } else if (newIndex < 0) {
          newIndex = allPhotos.length - 1;
        }
        nextImage = allPhotos[newIndex];

        console.log(idx + difference);
        return;
      }
    });

    var photoItem = new TwinkieSetApp.Views.PhotoItem({
      model: nextImage, // initialize with a new model
      collection: this.collection
    });

    this.$el.hide();
    photoItem.displayModal();
  },

  hideGalleryModal: function (e) {
    if (e.keyCode === 27) {
      this.$el.hide();
    }
  },

  render: function () {
    console.log('rendering');
    var content = this.template({
      photo: this.model
    });
    this.$el.html(content);

    var galleryImagePositioning = function () {
      var windowHeight = $(window).height();
      var imageHeight = windowHeight - 100;
      this.$el.find('.active-image img').css('height', imageHeight);
    }.bind(this);

    galleryImagePositioning();

    $(window).resize(function () {
      galleryImagePositioning();
    });

    $(window).resize();

    return this;
  }
});
