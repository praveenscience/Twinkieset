TwinkieSetApp.Views.AlbumsIndex = Backbone.CompositeView.extend({

  template: JST['albums/index'],
  className: "none",

  initialize: function () {
    // this.listenTo(this.collection, "sync", this.render);
    this.listenTo(this.collection, "add", this.addAlbumView);
    this.collection.each(this.addAlbumView.bind(this));
  },

  addAlbumView: function (album) {
    var subview = new TwinkieSetApp.Views.AlbumsIndexView({ model: album });
    this.addSubview('.albums', subview);
  },

  render: function () {
    var model = this.collection.getOrFetch(1);
    var content = this.template({ albums: this.collection, album: model });
    this.$el.html(content);
    this.attachSubviews();



    var navBarView = new TwinkieSetApp.Views.NavBar();
    this.$('nav').html(navBarView.render().$el);

    return this;
  }
});
