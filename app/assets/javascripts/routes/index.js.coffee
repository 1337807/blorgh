Blorgh.IndexRoute = Ember.Route.extend
  model: ->
    this.store.find('post')
