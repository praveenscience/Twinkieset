TwinkieSetApp.Views.Share = Backbone.View.extend({
  template: JST['admin_forms/share'],
  className: 'form-modal',

  initialize: function (options) {
    TwinkieSetApp.Views.defaultKeys.call(this);
    this.album = options.album
  },

  render: function () {
    var content = this.template({
      album: this.album
    });
    this.$el.html(content);
    return this;
  }
});
