TwinkieSetApp.Views.AlbumsShow = Backbone.CompositeView.extend({
  template: JST['albums/show'],
  className: 'album-show',

  initialize: function (options) {
    this.listenTo(this.model, "sync", function () {
      this.render();
      if (options.subalbumID) {
        this.currentSubalbumId = options.subalbumID;
      } else {
        this.currentSubalbumId = this.model.subalbums().first().id;
      }
      this.renderSubalbum(this.model.subalbums().get(this.currentSubalbumId));
    });
    this.listenTo(this.model,'subalbumSelected', this.renderSubalbum);


    this.navBarView = new TwinkieSetApp.Views.NavBar();
    this.addSubview("nav", this.navBarView);
    this.sidebar = new TwinkieSetApp.Views.AlbumsShowSidebar({
      model: this.model
    });
    this.addSubview(".album-show-sidebar", this.sidebar);

  },

  renderSubalbum: function (subalbum) {
    var photoIndexView = new TwinkieSetApp.Views.PhotosIndex({
      model: subalbum,
      collection: subalbum.photos()
    });
    $('.album-show-items').html(photoIndexView.render().$el);
  },

  render: function () {
    // console.log(this.model.subalbums().at(1));
    // console.log(this.model.subalbums().first());
    var content = this.template({ album: this.model });
    this.$el.html(content);
    this.attachSubviews();
    return this;
  }

});
