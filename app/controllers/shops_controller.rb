class ShopsController < ApplicationController
  def index
    @shops = Shop.order(items_count: :desc).includes(:items)
  end

  def show
    @shop = Shop.find(params[:id])
  end
end
