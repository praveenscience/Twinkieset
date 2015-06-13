TwinkieSetApp.Models.PublicSubalbum = Backbone.Model.extend({
  urlRoot: '/api/subalbums',

  parse: function (response) {
    if (response.photos) {
      this.photos().set(response.photos);
      delete response.photos;
    }

    this.photos().forEach( function (photo) {
      photo._subalbum = this;
    }.bind(this));

    return response;
  },

  photos: function () {
    if (!this._photos) {
      this._photos = new TwinkieSetApp.Collections.PublicPhotos([], { subalbum: this });
    }
    return this._photos;
  }

});
