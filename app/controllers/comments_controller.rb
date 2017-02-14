class CommentsController < ApplicationController
  before_action :check_if_logged_in, :only => [:new, :create]
  before_action :check_if_admin, :only => [:index]

  def index
    @comments = Comment.all
  end

  def new
    @post = Post.find params[:post_id]
    @comment = Comment.new
  end

  def create
    post = Post.find(params[:post_id])
    comment = post.comments.create comment_params
    @current_user.comments << comment
    redirect_to post_path(post)
  end

  # def show
  #   @comment = Comment.find params[:id]
  # end

  def destroy
    post = Post.find(params[:post_id])
    comment = post.comments.find(params[:id])
    comment.destroy
    redirect_to post_path(post)
  end

  private

  def  comment_params
    params.require(:comment).permit(:text, :user_id)
  end

end
