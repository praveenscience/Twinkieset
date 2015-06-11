TwinkieSetApp.Views.AlbumsShowSidebar = Backbone.CompositeView.extend({
  template: JST['albums/show_sidebar'],

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);

    this.listenTo(this.model.subalbums(), "add", this.addSubAlbumView);
    this.model.subalbums().each(this.addSubAlbumView.bind(this));

  },

  events: {
    'click .new-set-button': 'openSubalbumForm'
  },

  openSubalbumForm: function () {
    var subalbumForm = new TwinkieSetApp.Views.SubalbumForm({
      model: this.model,
      collection: this.model.subalbums()
    });
    $('body').append(subalbumForm.render().$el);
  },

  addSubAlbumView: function (subalbum) {
    // pass in the album to the subalbum so it can trigger when a subalbum is selected

    var subview = new TwinkieSetApp.Views.AlbumsShowSubalbumItem({
      model: subalbum,
      album: this.model
    });
    this.addSubview('.album-show-subalbums', subview);
  },

  render: function () {
    var content = this.template({ album: this.model });
    this.$el.html(content);
    this.attachSubviews();


    if (this.model.get('cover_image_url')) {
      cover_image = this.model.get('cover_image_url');
    } else {
      cover_image = "http://images.karenling.net/2014/06/diane_angel_gomez_nadine_jose_048.jpg";
    }
    this.$el.find('.collection-cover-image').css('background', 'url('+cover_image+')');
    this.$el.find('.collection-cover-image').css('background-size', 'cover');
    this.$el.find('.collection-cover-image').css('background-position', 'center center');


    // var firstSubalbum = this.model;
    // console.log(firstSubalbum.subalbums().first());
    // console.log(firstSubalbum.subalbums().first().photos());
    // var photoIndexView = new TwinkieSetApp.Views.PhotosIndex({
    //   model: firstSubalbum.subalbums().first(),
    //   collection: firstSubalbum.subalbums().first().photos()
    // });
    // $('.album-show-items').html(photoIndexView.render().$el);



    return this;
  }

})
