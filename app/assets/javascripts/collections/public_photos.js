TwinkieSetApp.Collections.PublicPhotos = Backbone.Collection.extend({
  url: function () {
    return "/api/" + this.userID + "/albums";
  },
  model: TwinkieSetApp.Models.PublicPhoto,

  initialize: function (models, options) {
    this.subalbum = options.subalbum;
    this.userID = options.userID;

  }

});
