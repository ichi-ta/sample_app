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
      #有効なユーザーのときの処理
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      #無効なユーザーのときの処理
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
