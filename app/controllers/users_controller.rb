class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    #debugger
    #   ↑を追加することで挙動を調べられる
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
