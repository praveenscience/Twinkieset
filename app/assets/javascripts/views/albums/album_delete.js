TwinkieSetApp.Views.DeleteAlbum = Backbone.View.extend({
  template: JST['albums/album_delete'],
  className: 'form-modal',



  events: {
    'click .delete-album-confirm': 'deleteAlbum',
    'click .cancel-new-album': 'cancelAlbum'
  },

  cancelAlbum: function () {
    this.$el.hide();
  },

  deleteAlbum: function () {
    this.remove();
    this.model.destroy();
  },

  render: function () {
    var content = this.template({ album: this.model });
    this.$el.html(content);
    return this;
  }

});
