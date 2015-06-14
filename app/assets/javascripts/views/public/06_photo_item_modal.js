TwinkieSetApp.Views.PhotoItemModal = Backbone.View.extend({
  template: JST['public/06_photo_item_modal'],
  className: 'gallery-modal',

  initialize: function () {
    $('body').keydown(this.keyBinds.bind(this));
    this.rendering = false;
  },

  events: {
    'click .next-image': 'displayNextImage',
    'click .prev-image': 'displayPreviousImage',
    'click .close-gallery-modal': 'hideModal'
  },

  keyBinds: function (e) {

    if (e.keyCode === 27) {
      this.hideModal();
    }

    if (!this.rendering) {
      this.rendering = true;
      if (e.keyCode === 39) {
          this.displayNextImage();
      } else if (e.keyCode === 37) {
        this.displayPreviousImage();
      }
    }

  },

  hideModal: function (event) {
    this.remove();
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

        console.log(newIndex);
        return;
      }
    });

    var photoItem = new TwinkieSetApp.Views.PhotoItem({
      model: nextImage, // initialize with a new model
      collection: this.collection
    });

    this.remove();
    photoItem.displayModal();


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
    this.rendering = false;
    return this;
  }
});
