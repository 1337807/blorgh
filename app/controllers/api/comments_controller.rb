class Api::CommentsController < ApplicationController
  before_action :set_post

  def index
    @comments = @post.comments
  end

  def create
    @comment = @post.comments.build(comment_params)
    if @comment.save
      render :show
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id] || params[:comment][:post_id])
  end

  def comment_params
    params.require(:comment).permit(:text, :author)
  end
end
