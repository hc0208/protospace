class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @prototype = @user\
                   .prototypes
                   .page(params[:page])
                   .per(8)
  end

  def edit
  end

  def update
    if current_user.update(update_params)
      redirect_to root_path, notice: "#{current_user.name} was successfully updated"
    else
      render :edit
    end
  end

  private

  def update_params
    params.require(:user).permit(
      :name,
      :avatar,
      :profile,
      :member,
      :works
    )
  end
end
