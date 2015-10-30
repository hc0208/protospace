class PrototypesController < ApplicationController
  def new
    @prototype = Prototype.new
    @prototype.thumbnails.build
  end
  def create
    @prototype = Prototype.create(prototype_params)
    redirect_to controller: 'prototype/ranking', action: 'index'
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, :user_id, thumbnails_attributes: [:image, :role]).merge(user_id: current_user.id)
  end
end
