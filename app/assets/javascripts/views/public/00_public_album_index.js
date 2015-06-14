TwinkieSetApp.Views.PublicAlbumIndex = Backbone.CompositeView.extend({
  template: JST['public/00_public_album_index'],

  initialize: function (options) {
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.model.albums(), 'add', this.addAlbumView);
    this.model.albums().each(this.addAlbumView.bind(this));

  },

  addAlbumView: function (album) {
    var subview = new TwinkieSetApp.Views.PublicAlbumItem({ model: album });
    this.addSubview('.albums-container', subview);
  },

  render: function () {
    var content = this.template({
      owner: this.model
    });
    this.$el.html(content);
    this.attachSubviews();
    return this;
  }
});
