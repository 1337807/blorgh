#= require jquery
#= require jquery_ujs
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require blorgh

# for more details see: http://emberjs.com/guides/application/
window.Blorgh = Ember.Application.create
  LOG_TRANSITIONS: true
  LOG_TRANSITIONS_INTERNAL: true
  LOG_VIEW_LOOKUPS: true
  Resolver: Ember.DefaultResolver.extend
    resolve: (name) ->
      console.log(name)
      this._super(name)
