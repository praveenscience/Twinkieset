TwinkieSetApp.Views.DeleteSubalbum = Backbone.View.extend({
  template: JST['subalbums/subalbum_delete'],
  className: 'form-modal',

  events: {
    'click .delete-subalbum-confirm': 'deleteSubalbum',
    'click .cancel-delete-subalbum': 'cancelSubalbum'
  },

  initialize: function (options) {
    this.subalbum = options.subalbum;
  },

  cancelSubalbum: function () {
    this.$el.hide();
  },

  deleteSubalbum: function () {
    this.remove();
    this.subalbum.destroy();
  },

  render: function () {
    var content = this.template({ subalbum: this.subalbum });
    this.$el.html(content);
    return this;
  }

});
