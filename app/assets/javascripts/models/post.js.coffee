Blorgh.Post = Ember.Object.extend
  save: ->
    $.post "api/posts",
      post: {
        title: this.title
        text: this.text
      }

Blorgh.Post.reopenClass
  find: (id) ->
    $.getJSON("/api/posts/#{id}").then (post) ->
      post
  findAll: ->
    posts = Em.A()
    $.getJSON('/api/posts').then (data) ->
      $.each data.posts, (index, post) ->
        posts.pushObject(post)
    console.log(posts)
    posts
