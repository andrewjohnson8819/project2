class UsersController < ApplicationController

  def index
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @prompts = @user.prompts
  end

  def user_params
    params.require(:user).permit(:email, :id)
  end
end
