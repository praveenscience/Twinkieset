TwinkieSetApp.Models.Owner = Backbone.Model.extend({
  urlRoot: function() {
    return "/api/" + this.userID + "/albums";
  },

  initialize: function(options) {
    this.userID = options.userID;
  },

  parse: function (response) {
    if (response.categories) {
      this.categories().set(response.categories, { parse: true });
      delete response.categories;
    }

    return response;
  },

  categories: function () {
    if (!this._categories) {
      this._categories = new TwinkieSetApp.Collections.OwnerCategories({ owner: this });
    }
    return this._categories;
  }

});
