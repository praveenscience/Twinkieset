TwinkieSetApp.Views.AlbumsShowSubalbumItem = Backbone.View.extend({
  template: JST['items/albums_show_subalbum_item'],
  className: function () {
    return 'album-show-sidebar-subalbums-li subalbum-' + this.model.id;
  },
  tagName: 'li',

  initialize: function (options) {
    this.album = options.album;
    this.listenTo(this.model, "sync", this.render);
  },

  events: {
    'click': 'changeSubalbums',
    'dropSubalbum': 'dropSubalbum'
  },


  dropSubalbum: function (event, index) {
    console.log('hereeee');
    this.$el.trigger('updateSort', [this.model, index]);
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
