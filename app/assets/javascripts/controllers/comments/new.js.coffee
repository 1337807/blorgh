Blorgh.CommentsNewController = Ember.Controller.extend({
  needs: ['post']
  content: ->
    @store.createRecord('comment', { post: @parentController.content })

  actions:
    save: ->
      debugger
      this.content

})