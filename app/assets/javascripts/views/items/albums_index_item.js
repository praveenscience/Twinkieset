TwinkieSetApp.Views.AlbumsIndexView = Backbone.View.extend({
  template: JST['items/albums_index_item'],
  className: 'album_index_item col-md-3',

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);
  },

  render: function () {
    var content = this.template({ album: this.model });
    this.$el.html(content);
    return this;
  }
});
