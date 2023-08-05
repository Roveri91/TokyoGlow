class PostsController < ApplicationController
  def index
    @posts = policy_scope(Post).all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    authorize @post
  end

  def create
    # @post = Post.new(post_params)
    # @post.user = current_user
    # @post.save!
    @post = current_user.posts.create(post_params)
    @post.user = current_user
    redirect_to posts_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :category)
  end
end
