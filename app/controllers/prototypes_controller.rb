class PrototypesController < ApplicationController
  def new
  end
  def create
    Prototype.create(title: prototype_params[:title], catchcopy: prototype_params[:catchcopy], concept: prototype_params[:concept], user_id: current_user.id)
    redirect_to controller: 'prototype/ranking', action: 'index'
  end

  private
  def prototype_params
    params.permit(:title, :catchcopy, :concept, :user_id)
  end
end
