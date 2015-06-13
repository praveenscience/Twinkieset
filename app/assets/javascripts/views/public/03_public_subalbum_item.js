TwinkieSetApp.Views.PublicSubalbumItem = Backbone.View.extend({
  template: JST['public/public_subalbum_item'],

  intialize: function () {
    //this.model is a subalbum
  },

  events: {
    "click": "changeSubalbum",
    "testingThis": "changeSubalum"
  },

  changeSubalbum: function (event) {
    alert('ewlafjwel');
    var photosInSubalbum = new TwinkieSetApp.Views.PublicSubalbumPhotos({
      model: this.model
    });
    $('.holder').html(photosInSubalbum.render().$el);
  },

  render: function () {
    var content = this.template({
      subalbum: this.model
    });
    this.$el.html(content);
    return this;
  }
});
