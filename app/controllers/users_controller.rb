class UsersController < ApplicationController
  def index
    @users = User.order(items_count: :desc).includes(:items)
  end

  def show
    @user = User.find(params[:id])
  end
end
