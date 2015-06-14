TwinkieSetApp.Models.PublicPhoto = Backbone.Model.extend({
  urlRoot: function () {
    return "/api/" + this.userID + "/albums";
  },
});
