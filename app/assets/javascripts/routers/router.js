TwinkieSetApp.Routers.Router = Backbone.Router.extend({
  routes: {
    "": "index",
    "public/:user_id/collection/:id(/set/:set_id)": "publicShow",
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
    alert('ewjalfkewl');
    var album = this.collection.getOrFetch(id);
    var showView = new TwinkieSetApp.Views.AlbumsShow({
      model: album,
      subalbumID: subalbumID
    });
    this._swapView(showView);
  },

  publicShow: function(user_id, id, set_id) {
    var album_owner = new TwinkieSetApp.Models.Owner({
      userID: user_id
    });
    album_owner.fetch();
    var albums = album_owner.albums();
    albums.fetch();
    var album = albums.getOrFetch(id);

    var showView = new TwinkieSetApp.Views.PublicAlbumShow({
      model: album,
      setID: set_id,
      userID: user_id,
      album_owner: album_owner
    });
    this._swapView(showView);
  },

  publicIndex: function (id) {
    this.owner = new TwinkieSetApp.Models.Owner({
      userID: id
    });
    this.owner.fetch();
    var userIndex = new TwinkieSetApp.Views.PublicAlbumIndex({
      model: this.owner,
    });
    this._swapView(userIndex);
  },

  _swapView: function (newView) {
    this._currentView && this._currentView.remove();
    this._currentView = newView;
    this.$rootEl.html(newView.render().$el);
  }
});
