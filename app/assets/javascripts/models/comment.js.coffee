Blorgh.Comment = DS.Model.extend
  username: DS.attr('string')
  text: DS.attr('string')
  post: DS.belongsTo('post')