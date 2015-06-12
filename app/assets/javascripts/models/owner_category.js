TwinkieSetApp.Models.OwnerCategory = Backbone.Model.extend({

  parse: function (response) {
    if (response.albums) {
      this.albums().set(response.albums, { parse: true });
      delete response.albums;
    }

    return response;
  },

  albums: function () {
    if (!this._albums) {
      this._albums = new TwinkieSetApp.Collections.OwnerAlbums({ category: this });
    }
    return this._albums;
  }

});
