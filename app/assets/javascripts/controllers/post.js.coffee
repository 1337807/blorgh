Blorgh.PostController = Ember.ObjectController.extend
  actions:
    destroy: ->
      if confirm('Are you sure you want to delete this post?')
        this.content.deleteRecord()
        this.content.save()
        this.transitionToRoute('index')
