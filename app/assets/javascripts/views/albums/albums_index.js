TwinkieSetApp.Views.AlbumsIndex = Backbone.View.extend({

  template: JST['albums/index'],

  initialize: function () {
    this.listenTo(this.collection, "sync", this.render);
  },

  render: function () {
    var model = this.collection.getOrFetch(1);
    var content = this.template({ albums: this.collection, album: model });
    this.$el.html(content);
    return this;
  }
});
