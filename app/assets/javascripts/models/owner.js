TwinkieSetApp.Models.Owner = Backbone.Model.extend({
  urlRoot: function() {
    return "/api/" + this.userID + "/albums";
  },

  initialize: function(options) {
    this.userID = options.userID;
  },

  parse: function (response) {
    if (response.albums) {
      this.albums().set(response.albums);
      delete response.albums;
    }

    return response;
  },

  albums: function () {
    if (!this._albums) {
      this._albums = new TwinkieSetApp.Collections.OwnerAlbums({ owner: this });
    }
    return this._albums;
  }

});
