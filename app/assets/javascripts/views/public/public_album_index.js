TwinkieSetApp.Views.PublicAlbumIndex = Backbone.View.extend({
  template: JST['public/public_album_index'],

  initialize: function (options) {
    this.currentCategory = options.category;
    this.listenTo(this.model, "sync", this.render);
  },


  render: function () {

    var content = this.template({
      owner: this.model,
      categories: this.model.categories()
    });
    this.$el.html(content);
    return this;
  }
});
