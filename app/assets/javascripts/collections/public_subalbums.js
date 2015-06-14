TwinkieSetApp.Collections.PublicSubalbums = Backbone.Collection.extend({
  url: function () {
    return "/api/" + this.userID + "/albums";
  },
  model: TwinkieSetApp.Models.PublicSubalbum,

  initialize: function (models, options) {
    this.album = options.album;
    this.userID = options.userID;
  }
});
