TwinkieSetApp.Routers.Router = Backbone.Router.extend({
  routes: {
    "": "index",
    "public/:user_id/collection/:id": "publicShow",
    "public/:id": "publicIndex",
    "collection/:id(/set/:subalbumId)": "show",
  },

  initialize: function (options) {

    this.$rootEl = options.$rootEl;
    this.collection = new TwinkieSetApp.Collections.Albums();


  },

  index: function () {

    this.collection.fetch();
    var indexView = new TwinkieSetApp.Views.AlbumsIndex({ collection: this.collection });
    this._swapView(indexView);
  },

  show: function (id, subalbumID) {
    var album = this.collection.getOrFetch(id);
    var showView = new TwinkieSetApp.Views.AlbumsShow({
      model: album,
      subalbumID: subalbumID
    });
    this._swapView(showView);
  },

  publicShow: function(user_id, id) {
    var owner = new TwinkieSetApp.Models.Owner({
      userID: user_id
    });
    owner.fetch();
    var albums = owner.albums();
    albums.fetch();
    var album = albums.getOrFetch(id);

    var showView = new TwinkieSetApp.Views.PublicAlbumShow({
      model: album
    });
    this._swapView(showView);
  },

  publicIndex: function (id) {
    this.owner = new TwinkieSetApp.Models.Owner({
      userID: id
    });
    this.owner.fetch();
    var userIndex = new TwinkieSetApp.Views.PublicAlbumIndex({
      model: owner,
    });
    this._swapView(userIndex);
  },

  _swapView: function (newView) {
    this._currentView && this._currentView.remove();
    this._currentView = newView;
    this.$rootEl.html(newView.render().$el);
  }
});
