TwinkieSetApp.Models.PublicSubalbum = Backbone.Model.extend({
  urlRoot: '/api/subalbums',

  parse: function (response) {
    if (response.photos) {
      this.photos.set(response.photos, { parse: true });
      delete response.photos;
    }

    return response;
  },

  photos: function () {
    if (!this._photos) {
      this._photos = new TwinkieSetApp.Collections.PublicPhotos([], { subalbum: this });
    }
    return this._photos;
  }

});
