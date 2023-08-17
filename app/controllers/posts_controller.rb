class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @posts = policy_scope(Post).all
    if params[:query].present?
      @posts = Post.general_search(params[:query])
    end
  end

  def show
    @post = Post.find(params[:id])
    authorize @post
    @reply = Reply.new
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
    authorize @post
    redirect_to posts_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    authorize @post
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :category)
  end
end
