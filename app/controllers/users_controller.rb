class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    @user.update(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:picture)
  end
end
