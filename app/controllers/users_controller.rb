class UsersController < ApplicationController
  def index
    @users = User.order(items_count: :desc)
  end

  def show
    @user = User.find(params[:id])
  end
end