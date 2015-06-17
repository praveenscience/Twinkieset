TwinkieSetApp.Views.AlbumsShowSidebar = Backbone.CompositeView.extend({
  template: JST['albums/show_sidebar'],

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);

    this.listenTo(this.model.subalbums(), "add", this.addSubAlbumView);
    this.model.subalbums().each(this.addSubAlbumView.bind(this));
  },

  events: {
    'click .new-set-button': 'openSubalbumForm',
    'sortstop': "saveOrdsSubalbums",
    'updateSort': "updateSortSubalbums",
  },

  updateSortSubalbums: function (event, droppedModel, position) {
    console.log(droppedModel.attributes);
    console.log("position " + position);
    this.model.subalbums().remove(droppedModel, { silent: true});
    this.model.subalbums().each(function (model, idx) {
      var ordinal = idx;
      if (idx >= position) {
        ordinal += 1;
      }
      model.set('order', ordinal);
      model.save();
    });

    droppedModel.set('order', position);
    droppedModel.save();
    this.model.subalbums().add(droppedModel, { silent: true });
    this.model.subalbums().sort();

  },

  saveOrdsSubalbums: function (event, ui) {
    ui.item.trigger('dropSubalbum', ui.item.index()); // ui.item finds its own view
  },

  openSubalbumForm: function () {
    var subalbumForm = new TwinkieSetApp.Views.SubalbumForm({
      model: this.model,
      collection: this.model.subalbums()
    });
    $('body').append(subalbumForm.render().$el);
  },

  addSubAlbumView: function (subalbum) {
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
    this.$el.find('.collection-cover-image').css('background-image', 'url('+cover_image+')');

    this.onRender();
    return this;
  },

  onRender: function(){
    $('.album-show-subalbums').sortable();
  },

});
