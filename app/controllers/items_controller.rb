class ItemsController < ApplicationController
  def index
    @items = Item.all
    if params[:tag]
      @items = @items.where("tags @> ?", "{#{params[:tag]}}")
    end
  end
  
  def show
    @item = Item.find(params[:id])
  end
end
