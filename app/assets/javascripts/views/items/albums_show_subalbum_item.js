TwinkieSetApp.Views.AlbumsShowSubalbumItem = Backbone.View.extend({
  template: JST['items/albums_show_subalbum_item'],
  className: 'album-show-sidebar-subalbums-li',
  tagName: 'li',

  initialize: function (options) {
    this.album = options.album;
    this.listenTo(this.model, "sync", this.render);
  },

  events: {
    'click': 'changeSubalbums'
  },

  changeSubalbums: function (event) {
    var path = "#collection/" + this.album.id + "/set/" + this.model.id;
    Backbone.history.navigate(path, { trigger: true });
  },

  render: function () {
    var content = this.template({ subalbum: this.model });
    this.$el.html(content);
    return this;
  }

});
