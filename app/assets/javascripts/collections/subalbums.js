TwinkieSetApp.Collections.Subalbums = Backbone.Collection.extend({
  url: '/api/subalbums',
  model: TwinkieSetApp.Models.Subalbum,

  getOrFetch: function (id) {
    var subalbum = this.get(id);

    if (subalbum) {
      subalbum.fetch();
    } else {
      subalbum = new TwinkieSetApp.Models.Album({ id: id });
      subalbum.fetch({
        success: function () {
          this.add(subalbum);
        }.bind(this)
      });
    }

    return subalbum;
    
  }

});
