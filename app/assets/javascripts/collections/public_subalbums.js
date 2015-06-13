TwinkieSetApp.Collections.PublicSubalbums = Backbone.Collection.extend({
  url: '/api/subalbums',
  model: TwinkieSetApp.Models.PublicSubalbum,

  initialize: function (models, options) {
    this.album = options.album;
  }
});
