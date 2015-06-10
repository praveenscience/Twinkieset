TwinkieSetApp.Views.AlbumsShowSubalbumItem = Backbone.View.extend({
  template: JST['items/albums_show_subalbum_item'],
  className: 'album-show-sidebar-subalbums-li',
  tagName: 'li',

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);

  },

  events: {
    'click': 'changeSubalbums'
  },

  changeSubalbums: function (event) {

    var photoIndexView = new TwinkieSetApp.Views.PhotosIndex({
      model: this.model,
      collection: this.model.photos()
    });
    $('.album-show-items').html(photoIndexView.render().$el);
  },




  render: function () {
    var content = this.template({ subalbum: this.model });
    this.$el.html(content);
    return this;
  }

});
