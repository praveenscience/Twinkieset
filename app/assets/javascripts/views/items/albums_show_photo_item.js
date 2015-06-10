TwinkieSetApp.Views.AlbumsShowPhotoItem = Backbone.View.extend({
  template: JST['items/albums_index_photo_item'],
  className: 'photo-item',

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);
  },

  render: function () {
    var content = this.template({ photo: this.model });
    this.$el.html(content);
    return this;
  }
});
