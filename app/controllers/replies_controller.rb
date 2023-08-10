class RepliesController < ApplicationController

  def new
    @reply = Reply.new
    authorize @reply
  end

  def create
    @post = Post.find(params[:post_id])
    @reply = Reply.new(reply_params)
    @reply.post = @post
    @reply.user = current_user
    authorize @reply
    if @reply.save
      redirect_to post_path(@post)
    else
      render "post/show", status: :unprocessable_entity
    end
  end

  def destroy
    @reply = Reply.find(params[:id])
    @reply.destroy
    authorize @reply
    redirect_to post_path(@reply.post)
  end

  private

  def reply_params
    params.require(:reply).permit(:content)
  end
end
