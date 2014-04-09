Blorgh.Post = DS.Model.extend
  title: DS.attr('string')
  text: DS.attr('string')
  comments: DS.hasMany('comment')
#   save: ->
#     if this.id
#       @update()
#     else
#       @create()

#   update: ->
#     $.ajax "api/posts/#{@id}",
#       type: 'PUT',
#       data:
#         post:
#           title: this.title
#           text: this.text
#     .then (response) ->
#       Ember.run () ->
#         Blorgh.Post.create(response)

#   create: ->
#     $.post "api/posts",
#       post:
#         title: this.title
#         text: this.text
#     .then (response) ->
#       Ember.run () ->
#         Blorgh.Post.create(response)

#   destroy: ->
#     $.ajax "api/posts/#{@id}",
#       type: 'DELETE'


# Blorgh.Post.reopenClass
#   find: (id) ->
#     Ember.$.getJSON("/api/posts/#{id}").then (post) ->
#       Ember.run () ->
#         Blorgh.Post.create(post)
#   findAll: ->
#     posts = Em.A()
#     Ember.$.getJSON('/api/posts').then (data) ->
#       Ember.run () ->
#         posts.pushObjects(data.posts)
#         posts
