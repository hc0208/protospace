class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @prototype = Prototype.where(user_id: params[:id]).page(params[:page]).per(8)
  end

  def edit
  end

  def update
    current_user.update(update_params)
    redirect_to controller: 'prototype/ranking', action: 'index'
  end

  private
  def update_params
    params.require(:user).permit(:name, :avatar, :profile, :member, :works)
  end

end
