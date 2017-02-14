class PostsController < ApplicationController
  before_action :check_if_logged_in, :only => [:index, :new, :create, :update, :destroy]
  # before_action :check_if_admin, :only => [:index]

  def index
      @posts = Post.all
  end

  def user_posts
    user = User.find params[:user_id]
    @posts = user.posts
    render :index
  end

  def new
    @post = Post.new
  end

  def create
    post = @current_user.posts.new post_params
    if params[:file].present?
       req = Cloudinary::Uploader.upload(params[:file])
       post.image_url = req["public_id"]
     end
    if post.save
      redirect_to post_path(post)
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = @current_user.posts.find(params[:id])
  end

  def update

    post = @current_user.posts.find(params[:id])

    if params[:file].present?
       req = Cloudinary::Uploader.upload(params[:file])
       post.image_url = req["public_id"]
    end

    post.update_attributes post_params

    if post.save
      redirect_to post_path(post)
    else
      redirect_to root_path
    end

  end

  def destroy
    @post = @current_user.posts.find(params[:id])
    @post.destroy
    redirect_to root_path(@current_user)
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :body, :image_url, :user_id)
  end

end
