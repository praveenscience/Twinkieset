TwinkieSetApp.Views.PublicAlbumIndex = Backbone.CompositeView.extend({
  template: JST['public/00_public_album_index'],

  initialize: function (options) {
    this.listenTo(this.model, "sync", this.render);




  },

  addAlbumView: function (album) {
    var subview = new TwinkieSetApp.Views.PublicAlbumItem({
      model: album,
      owner: this.model
    });
    this.addSubview('.albums-container', subview);
  },

  render: function () {
    this.listenTo(this.model.albums(), 'add', this.addAlbumView);
    this.model.albums().each(this.addAlbumView.bind(this));
    var content = this.template({
      owner: this.model
    });
    this.$el.html(content);
    this.attachSubviews();
    return this;
  }
});
