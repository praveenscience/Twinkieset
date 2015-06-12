TwinkieSetApp.Collections.OwnerAlbums = Backbone.Collection.extend({
  url: '/api/albums',

  initialize: function (models, options) {

    this.owner = options.owner;

  }
});
