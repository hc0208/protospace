class LikesController < ApplicationController
  def create
    current_user.likes.create(like_params)
    set_like
  end

  def destroy
    Like.destroy(params[:id])
    set_like
  end

  private

  def like_params
    params.permit(:user_id, :prototype_id).merge(prototype_id: params[:prototype_id])
  end

  def set_like
    @prototype = Prototype.find(params[:prototype_id])
    @likes = Like.find_by(prototype_id: params[:prototype_id], user_id: current_user.id) if user_signed_in?
  end
end
