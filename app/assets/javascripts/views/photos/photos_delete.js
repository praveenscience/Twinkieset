TwinkieSetApp.Views.PhotosDelete = Backbone.View.extend({
  template: JST['photos/photos_delete'],
  className: 'form-modal',

  initialize: function (options) {
    // this.TwinkieSetApp.selectedPhotosArray = options.TwinkieSetApp.selectedPhotosArray;
  },

  events: {
    'click .delete-photos-confirm': 'deletePhotos',
    'click .cancel-delete-photos': 'cancelDeletePhotos'
  },

  deletePhotos: function () {
    ((TwinkieSetApp.selectedPhotosArr)).forEach(function (photoModel) {
      photoModel.destroy({
        success: function () {
          TwinkieSetApp.selectedPhotosArray = [];
          $('.number-of-selected').html("0 selected");
        }
      });
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
