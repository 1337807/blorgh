Blorgh.PostRoute = Ember.Route.extend
  actions:
    destroy: ->
      this.currentModel.destroy()
