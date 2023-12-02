# frozen_string_literal: true

class LikesController < ApplicationController
  before_action :set_post_like, only: %i[destroy]

  def create
    @post_like = current_user.post_likes.new(post_like_params)

    if @post_like.save
      redirect_to @post_like.post
    else
      format.html { render :new, status: :unprocessable_entity }
    end
  end

  def destroy
    post = @post_like.post
    @post_like.destroy

    redirect_to post
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post_like
    @post_like = PostLike.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def post_like_params
    pp params
    params.require(:post_like).permit(:post_id)
  end
end
