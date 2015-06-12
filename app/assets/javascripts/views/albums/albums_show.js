TwinkieSetApp.Views.AlbumsShow = Backbone.CompositeView.extend({
  template: JST['albums/show'],
  className: 'album-show',

  initialize: function (options) {
    this.subAlbumViewCreated = false;
    this.currentSubalbumId = options.subalbumID;
    this.listenTo(this.model, "sync", this.render);
    // this.listenTo(this.model,'subalbumSelected', this.renderSubalbum);
    this.navBarView = new TwinkieSetApp.Views.NavBar();
    this.addSubview("nav", this.navBarView);
    this.sidebar = new TwinkieSetApp.Views.AlbumsShowSidebar({
      model: this.model
    });
    this.addSubview(".album-show-sidebar", this.sidebar);
    this.createSubAlbumView();
  },

  createSubAlbumView: function () {
    if(this.subAlbumViewCreated){
      return;
    }
    if (!this.currentSubalbumId){
      if(this.model.subalbums().length === 0) {
        return;
      } else {
        this.currentSubalbumId = this.model.subalbums().first().id;
      }
    }
    var subalbum = new TwinkieSetApp.Models.Subalbum({id: this.currentSubalbumId});
    subalbum._album = this.model;

    this.photoIndexView = new TwinkieSetApp.Views.PhotosIndex({
      model: subalbum,
      collection: subalbum.photos()
    });
    subalbum.fetch();
    this.subAlbumViewCreated = true;
    // $('.album-show-items').html(photoIndexView.render().$el);
  },

  attachPhotoIndex: function(){
    if(this.subAlbumViewCreated){
      this.$('.album-show-items').html(this.photoIndexView.$el);
      this.photoIndexView.delegateEvents();
      this.photoIndexView.attachSubviews();
    }
  },

  render: function () {
    // console.log(this.model.subalbums().at(1));
    // console.log(this.model.subalbums().first());

    this.createSubAlbumView();

    var content = this.template({ album: this.model });
    this.$el.html(content);
    this.attachSubviews();
    this.attachPhotoIndex();
    return this;
  }

});
