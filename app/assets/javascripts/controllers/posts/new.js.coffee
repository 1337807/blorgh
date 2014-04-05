Blorgh.PostsNewController = Ember.ObjectController.extend
  content: Blorgh.Post.create({})

  actions:
    save: ->
      this.content.save()
