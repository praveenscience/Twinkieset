TwinkieSetApp.Views.PublicAlbumIndex = Backbone.CompositeView.extend({
  template: JST['public/public_album_index'],

  initialize: function (options) {
    this.currentCategory = options.category;
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.model.albums(), 'add', this.addAlbumView);
    this.model.albums().each(this.addAlbumView.bind(this));
  },

  addAlbumView: function (album) {
    var subview = new TwinkieSetApp.Views.PublicAlbumItem({ model: album });
    this.addSubview('.albums-container', subview);
  },


  render: function () {
    var categories = this.model.get("categories");
    // (this.model.get("categories")).forEach(function() {
    //   debugger;;
    // });
    console.log(this.model.albums());
    var content = this.template({
      owner: this.model,
      categories: categories,
      albums: this.model.albums()
    });
    this.$el.html(content);
    this.attachSubviews();
    return this;
  }
});
