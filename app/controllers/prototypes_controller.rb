class PrototypesController < ApplicationController
  def new
    @prototype = Prototype.new
    @prototype.thumbnails.build
  end

  def create
    @prototype = Prototype.create(prototype_params)
    redirect_to controller: 'prototype/ranking', action: 'index'
  end

  def destroy
    prototype = Prototype.find(id_params[:id])
    if prototype.user_id == current_user.id
      prototype.destroy
    end
    redirect_to :root
  end

  def edit
    @prototype = Prototype.find(params[:id])
  end

  def update
    prototype = Prototype.find(params[:id])
    prototype.update(update_params)
    redirect_to :root
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, :user_id, thumbnails_attributes: [:image, :role]).merge(user_id: current_user.id)
  end

  def update_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, :user_id, thumbnails_attributes: [:image, :role, :id]).merge(user_id: current_user.id)
  end

  def id_params
    params.permit(:id, thumbnails_attributes: [:image, :role, :id])
  end
end
