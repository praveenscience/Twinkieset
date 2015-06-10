TwinkieSetApp.Views.AlbumsShow = Backbone.CompositeView.extend({
  template: JST['albums/show'],
  className: 'album-show',

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);
  },

  render: function () {
    var content = this.template({ album: this.model });
    this.$el.html(content);
    this.attachSubviews();

    var navBarView = new TwinkieSetApp.Views.NavBar();
    this.$('nav').html(navBarView.render().$el);

    var sidebar = new TwinkieSetApp.Views.AlbumsShowSidebar({ model: this.model });
    this.$('.album-show-sidebar').html(sidebar.render().$el);

    return this;
  }

})
