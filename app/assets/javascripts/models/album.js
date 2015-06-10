TwinkieSetApp.Models.Album = Backbone.Model.extend({
  urlRoot: '/api/albums',

  parse: function (jsonResponse) {
    if (jsonResponse.subalbums) {
      this.subalbums().set(jsonResponse.subalbums, { parse: true });
      delete jsonResponse.subalbums;
    }

    return jsonResponse;
  },

  subalbums: function () {
    if (!this._subalbums) {
      this._subalbums = new TwinkieSetApp.Collections.Subalbums([], { album: this } );
    }

    return this._subalbums;
  }
});
