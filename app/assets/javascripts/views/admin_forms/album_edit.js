TwinkieSetApp.Views.EditForm = Backbone.View.extend({
  template: JST['admin_forms/album_edit'],
  className: 'form-modal',

  initialize: function () {
    TwinkieSetApp.Views.defaultKeys.call(this);
  },

  events: {
    "submit form": "editAlbum",
    "click .cancel-edit-album": "hideForm",
    'click .status-published': 'setStatusPublished',
    'click .status-draft': 'setStatusDraft'
  },

  setStatusPublished: function () {
    this.$el.find('#album-status').val("Published");
    this.$el.find('.status-published').addClass('selected');
    this.$el.find('.status-draft').removeClass('selected');
  },

  setStatusDraft: function () {
    this.$el.find('#album-status').val("Draft");
    this.$el.find('.status-published').removeClass('selected');
    this.$el.find('.status-draft').addClass('selected');
  },

  hideForm: function () {
    console.log("hide");
    event.preventDefault();
    this.remove();
  },

  editAlbum: function (event) {
    console.log("edit fired");
    event.preventDefault();
    var attrs = $(event.currentTarget).serializeJSON();
    var editAlbum = this.model;
    editAlbum.save(attrs, {
      success: function () {
        console.log("success");
        editAlbum.fetch(); // do this to ensure string_date is rendered
        this.remove();
      }.bind(this),
      error: function (models, response) {
        console.log('hit the error');
        this.$el.find('.errors').html(response.responseJSON.join(". "));
      }.bind(this)
    });
  },

  render: function () {
    var content = this.template({
      album: this.model
    });
    this.$el.html(content);
    this.onRender();
    return this;
  },

  onRender: function () {
    if (this.model.get('status') === 'Draft') {
      this.$el.find('.status-published').removeClass('selected');
      this.$el.find('.status-draft').addClass('selected');
    } else {
      this.$el.find('.status-published').addClass('selected');
      this.$el.find('.status-draft').removeClass('selected');

    }




  }

});
