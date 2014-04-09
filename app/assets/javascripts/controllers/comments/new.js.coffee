Blorgh.CommentsNewController = Ember.ObjectController.extend
  needs: ['post']

  actions:
    save: (comment) ->
      post = comment.get('post')
      controller = this
      comment.save().then (response) ->
        post.get('comments').pushObject comment
        controller.transitionToRoute('post', post)
