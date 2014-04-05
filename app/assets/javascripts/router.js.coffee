# For more information see: http://emberjs.com/guides/routing/

Blorgh.Router.map ()->
  @resource 'post', path: '/posts/:post_id'
  @resource 'posts.new', path:'/posts/new'
  @resource 'posts.edit', path: '/posts/:id/edit'
