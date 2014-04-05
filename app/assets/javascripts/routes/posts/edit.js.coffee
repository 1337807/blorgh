Blorgh.PostsEditRoute = Ember.Route.extend
  model: (params) ->
    Blorgh.Post.find(params.id)

  actions:
    save: ->
      route = this
      this.currentModel.save().then (model) ->
        route.transitionTo('post', model)
