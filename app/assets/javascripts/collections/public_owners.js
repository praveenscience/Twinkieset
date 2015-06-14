TwinkieSetApp.Collections.PublicOwners = Backbone.Collection.extend({
  url: function () {
    return "/api/" + this.userID + "/albums";
  },


  getOrFetch: function (id) {
    var owner = this.get(id);

    if (owner) {
      owner.fetch();
    } else {
      owner = new TwinkieSetApp.Models.Owner({ id: id });
      owner.fetch({
        success: function () {
          this.add(owner);
        }.bind(this)
      });
    }

    return owner;
  }
});
