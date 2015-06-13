TwinkieSetApp.Collections.PublicAlbums = Backbone.Collection.extend({
  url: '/api/albums',
  model: TwinkieSetApp.Models.PublicAlbum,

  initialize: function (models, options) {
    this.owner = options.owner;
  },

  getOrFetch: function (id) {
    var album = this.get(id);

    if (album) {
      album.fetch();
    } else {
      album = new TwinkieSetApp.Models.Album({ id: id });
      album.fetch({
        success: function () {
          this.add(album);
        }.bind(this)
      });
    }

    return album;
  }

});
