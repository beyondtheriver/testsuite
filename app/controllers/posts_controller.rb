class PostsController < ApplicationController
  def index
    @posts = Post.all
    @users = User.all
    @user = current_user
  end

  def show
    @posts = Post.find(params[:id])
    # @post = current_user.posts.find(params[:id])
    @comment = Comment.new
    @user = current_user
    @comment_post = Comment.where(params[:post_id])
  end

  def new
    @users = User.all
    @user = current_user
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    # @post = Post.new(post_params)
    @post.save
    @post.user = current_user

    redirect_to posts_path
  end

  def destroy
     # find a specific post by post_id
      @post = Post.find(params[:id])
     # delete post from database
      @post.destroy
  end


  private

  def post_params
    params.require(:post).permit(:message)
  end
end


