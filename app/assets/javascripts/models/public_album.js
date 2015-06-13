TwinkieSetApp.Models.PublicAlbum = Backbone.Model.extend({
  urlRoot: '/api/albums',

  parse: function (response) {
    if (response.subalbums) {
      this.subalbums().set(response.subalbums, { parse: true });
      delete response.subalbums;
    }

    return response;
  },

  albums: function () {
    if (!this._subalbums) {
      this._subalbums = new TwinkieSetApp.Collections.PublicSubalbums([], { album: this });
    }
    return this._subalbums;
  }

});
