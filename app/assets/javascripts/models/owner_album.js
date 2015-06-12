TwinkieSetApp.Models.OwnerAlbum = Backbone.Model.extend({
  urlRoot: '/api/albums',

  parse: function (response) {
    if (response.albums) {
      this.albums().set(response.albums, { parse: true });
      delete response.albums;
    }

    return response;
  },

  albums: function () {
    if (!this._albums) {
      this._albums = new TwinkieSetApp.Collections.OwnerAlbums([], { owner: this });
    }
    return this._albums;
  }

});
