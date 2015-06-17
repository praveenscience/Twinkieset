TwinkieSetApp.Views.PhotosModal = Backbone.View.extend({
  template: JST['photos/photos_modal'],
  className: 'gallery-modal',

  initialize: function (options) {
    $('body').keydown(this.keyBinds.bind(this));
    this.rendering = false;
    this.position = options.position;
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

    if (e.keyCode === 39) {
        this.displayNextImage();
    } else if (e.keyCode === 37) {
      this.displayPreviousImage();
    }
  },

  hideModal: function (event) {
    this.remove();
  },

  displayNextImage: function (event) {
    if (!this.rendering) {
      this.rendering = true;
      this.displayImage(1);
    }
  },

  displayPreviousImage: function (event) {
    if (!this.rendering) {
      this.rendering = true;
      this.displayImage(-1);
    }
  },

  displayImage: function (difference) {
    if (!this.rendering) {

    }
    // var difference = 0;
    // if (direction === "next") {
    //   difference = 1;
    // } else if (direction === "previous") {
    //   difference = -1;
    // }
    this.rendering = true;
    var currentImage = this.model;
    var nextImage = this.model;
    var newIndex = 0;
    this.collection.forEach(function(photo, idx, allPhotos) {
      if (currentImage === photo) {
        newIndex = idx + difference;

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

    var photoItem = new TwinkieSetApp.Views.PhotosModal({
      model: nextImage, // initialize with a new model
      collection: TwinkieSetApp.selectedPhotosArr,
      position: newIndex

    });

    $('.gallery-modal').remove();
    $('body').append(photoItem.render().$el);
  },

  galleryImagePositioning: function () {
    var windowHeight = $(window).height();
    var imageHeight = windowHeight - 100;

    var windowWidth = $(window).width();
    var maxImageWidth = windowWidth - 100;

    var imagewidth = this.$el.find('.active-image img').width();
    var leftOfImage = (windowWidth - imagewidth)/2;

    console.log(leftOfImage);

    this.$el.find('.active-image img').css('height', imageHeight);
    this.$el.find('.active-image img').css('max-width', maxImageWidth);
    // if ( this.$el.find('.active-image img').width() > maxImageWidth ) {
    //   this.$el.find('.active-image img').css('height', "auto");
    //   this.$el.find('.active-image img').css('width', maxImageWidth);
    // } else {
    //   this.$el.find('.active-image img').css('height', imageHeight);
    //   this.$el.find('.active-image img').css('width', 'auto');
    //   var marginTop = (windowHeight - this.$el.find('.active-image img').height())/2;
    //   debugger;
    //   this.$el.find('.active-image img').css('margin-top', marginTop);
    // }

    this.$el.find('.file-name').css('left', leftOfImage);
    this.$el.find('.gallery-counter').css('right', leftOfImage);
  },

  render: function () {
    var content = this.template({
      photo: this.model,
      position: this.position+1,
      photoCollectionLength: this.collection.length
    });
    this.$el.html(content);

    this.galleryImagePositioning();

    $(window).resize(function () {
      this.galleryImagePositioning();
    }.bind(this));

    this.rendering = false;
    return this;
  }
});
