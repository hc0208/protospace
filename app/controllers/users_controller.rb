class UsersController < ApplicationController
  def edit
  end

  def update
    current_user.update(update_params)
    redirect_to controller: 'top', action: 'index'
  end

  private
  def update_params
    params.require(:user).permit(:name, :avatar, :profile, :member, :works)
  end

end
