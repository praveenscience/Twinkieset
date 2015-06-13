TwinkieSetApp.Collections.PublicPhotos = Backbone.Collection.extend({
  url: '/api/photos',
  model: TwinkieSetApp.Models.PublicPhoto,

  initialize: function (models, options) {
    this.subalbum = options.subalbum;

  }

});
