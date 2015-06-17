TwinkieSetApp.Views.Form = Backbone.View.extend({
  template: JST['albums/form'],
  className: 'form-modal',

  initialize: function () {

  },

  events: {
    "submit form": "createAlbum",
    "click .cancel-new-album": "hideForm"
  },

  hideForm: function () {
    event.preventDefault();
    this.$el.hide();
  },

  createAlbum: function (event) {
    event.preventDefault();
    var attrs = $(event.currentTarget).serializeJSON();
    var newAlbum = new TwinkieSetApp.Models.Album();
    newAlbum.save(attrs, {
      success: function () {
        this.collection.add(newAlbum);
        newAlbum.fetch(); // do this to ensure string_date is rendered
        this.$el.hide();
      }.bind(this)
    });
  },

  render: function () {
    var content = this.template();
    this.$el.html(content);
    return this;
  }

});
