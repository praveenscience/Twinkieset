TwinkieSetApp.Routers.Router = Backbone.Router.extend({
  routes: {
    "": "index"
  },

  initialize: function (options) {
    console.log("got into router");
    this.$rootEl = options.$rootEl;
    this.collection = new TwinkieSetApp.Collections.Albums();
  },

  index: function () {
    this.collection.fetch();
    var indexView = new TwinkieSetApp.Views.AlbumsIndex({ collection: this.collection });
    this._swapView(indexView);
    console.log("in the index file");
  },

  _swapView: function (newView) {
    this._currentView && this._currentView.remove();
    this._currentView = newView;
    this.$rootEl.html(newView.render().$el);
  }
});
