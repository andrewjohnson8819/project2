class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def edit
    @users = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    @user.update(user_params.merge(user: current_user))
    redirect_to user_path(@user)
  end
  private
  def user_params
    params.require(:user).permit(:username, :favorite_genre, :favorite_books, :about_me)
  end
end
