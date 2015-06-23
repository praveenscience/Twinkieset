TwinkieSetApp.Collections.Photos = Backbone.Collection.extend({
  url: '/api/photos',
  model: TwinkieSetApp.Models.Photo,

  // comparator: 'order',

  comparator: function (photo) {
    return photo.get('order'); // doesn't do anything since we use CompositeView
  },

  getOrFetch: function (id) {
    var photo = this.get(id);

    if (photo) {
      photo.fetch();
    } else {
      photo = new TwinkieSetApp.Models.PublicAlbum({ id: id });
      photo.fetch({
        success: function () {
          this.add(photo);
        }.bind(this)
      });
    }

    return photo;

  }

});
