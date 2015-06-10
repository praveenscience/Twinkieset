TwinkieSetApp.Models.Subalbum = Backbone.Model.extend({
  urlRoot: '/api/subalbums',

  parse: function (jsonResponse) {
    if (jsonResponse.photos) {
      this.photos().set(jsonResponse.photos, { parse: true });
      delete jsonResponse.photos;
    }

    return jsonResponse;
  },

  photos: function () {
    if (!this._photos) {
      this._photos = new TwinkieSetApp.Collections.Photos([], { subalbum: this } );
    }

    return this._photos;
  }
});
