class RepliesController < ApplicationController
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

  private

  def reply_params
    params.require(:reply).permit(:content)
  end
end
