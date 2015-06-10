TwinkieSetApp.Collections.Photos = Backbone.Collection.extend({
  url: '/api/photos',
  model: TwinkieSetApp.Models.Photo,

  getOrFetch: function (id) {
    var photo = this.get(id);

    if (photo) {
      photo.fetch();
    } else {
      photo = new TwinkieSetApp.Models.Album({ id: id });
      photo.fetch({
        success: function () {
          this.add(photo);
        }.bind(this)
      });
    }

    return photo;
  }

});
