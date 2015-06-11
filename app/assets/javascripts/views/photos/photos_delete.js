TwinkieSetApp.Views.PhotosDelete = Backbone.View.extend({
  template: JST['photos/photos_delete'],
  className: 'form-modal',

  initialize: function (options) {
    this.selectedPhotosArray = options.selectedPhotosArray;
  },

  events: {
    'click .delete-photos-confirm': 'deletePhotos',
    'click .cancel-delete-photos': 'cancelDeletePhotos'
  },

  deletePhotos: function () {
    this.selectedPhotosArray.forEach(function (photoModel) {
      photoModel.destroy();
    });
    this.remove();
  },

  cancelDeletePhotos: function () {
    this.$el.hide();
  },

  render: function () {
    var content = this.template();
    this.$el.html(content);
    return this;
  }

});
