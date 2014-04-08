Blorgh.PostsNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord('post')
  actions:
    save: ->
      route = this
      @currentModel.save().then (model) ->
        route.transitionTo('post', model)
