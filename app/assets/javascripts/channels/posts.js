App.posts = App.cable.subscriptions.create('PostsChannel', {  
  received: function(data) {
    $("#posts").removeClass('hidden')
    return $('#posts').append(this.renderPost(data));
  },

  renderPost: function(data) {
    return "<p>" + data.post + "</p>";
  }
});
