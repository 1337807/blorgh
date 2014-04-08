Blorgh.PostsNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord('post')
  actions:
    save: ->
      @model.save().then (model) ->
      @transitionTo('post', model)
