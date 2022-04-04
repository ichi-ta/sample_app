class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    #debugger
    #   ↑を追加することで挙動を調べられる
  end

  def new
  end
end
