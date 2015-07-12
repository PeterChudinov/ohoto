class ShopsController < ApplicationController
  def index
    @shops = Shop.order(items_count: :desc)
  end

  def show
    @shop = Shop.find(params[:id])
  end
end
