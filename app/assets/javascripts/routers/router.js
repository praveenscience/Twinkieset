TwinkieSetApp.Routers.Router = Backbone.Router.extend({
  routes: {
    "": "index",
    "collection/:id(/set/:subalbumId)": "show",
    ":user_id/collection/:album_id(/set/:set_id)": "publicShow",
    ":id": "publicIndex",
  },

  initialize: function (options) {
    this.$rootEl = options.$rootEl;
    this.$rootElPublic = options.$rootElPublic;
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

  _swapView: function (newView) {
    this._currentView && this._currentView.remove();
    this._currentView = newView;
    this.$rootEl.html(newView.$el);
    newView.render();
  },


  publicIndex: function (id) {
    this.owner = new TwinkieSetApp.Models.Owner({
      userID: id
    });
    this.owner.fetch();

    var userIndex = new TwinkieSetApp.Views.PublicAlbumIndex({
      model: this.owner,
    });

    this._swapViewPublic(userIndex);
  },

  publicShow: function(user_id, album_id, set_id) {
    var album_owner = new TwinkieSetApp.Models.Owner({
      userID: user_id
    });
    album_owner.fetch();

    var album = new TwinkieSetApp.Models.PublicAlbum({
      userID: user_id,
      albumID: album_id
    });

    album.fetch({
      error: function () {
        window.location.href = "/album_sessions/new";
      }
    });

    var showView = new TwinkieSetApp.Views.PublicAlbumShow({
      album_owner: album_owner,
      album: album,
      setID: set_id
    });
    this._swapViewPublic(showView);
  },

  _swapViewPublic: function (view) {
    this._currentViewPublic && this._currentViewPublic.remove();
    this._currentViewPublic = view;
    this.$rootElPublic.html(view.$el);
    view.render();
  }
});
