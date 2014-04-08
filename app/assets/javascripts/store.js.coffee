Blorgh.ApplicationAdapter = DS.ActiveModelAdapter.extend
    namespace: 'api'

Blorgh.ApplicationSerializer = DS.ActiveModelSerializer.extend
  # Turns { id: 1, ... } into something like { post: { id: 1, ... } }
  extractSingle: (store, type, oldPayload) ->
    newPayload = {}
    newPayload[type.typeKey] = oldPayload

    this._super(store, type, newPayload)