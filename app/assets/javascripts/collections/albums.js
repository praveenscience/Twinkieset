TwinkieSetApp.Collections.Albums = Backbone.Collection.extend({
  url: '/api/albums',
  model: TwinkieSetApp.Models.Album,

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
