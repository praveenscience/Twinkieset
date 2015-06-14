TwinkieSetApp.Views.PhotoItemModal = Backbone.View.extend({
  template: JST['public/06_photo_item_modal'],
  className: 'gallery-modal',

  initialize: function () {
    $('body').keyup(this.hideGalleryModal.bind(this));
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
