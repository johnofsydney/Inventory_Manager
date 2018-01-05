class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    item = Item.create item_params
    if item.save
      redirect_to item
    else
      redirect_to root
      # later we'll make a better landing page for failed save action.
    end
  end

  def edit
    @item = Item.find params[:id]
  end

  def update
    item = Item.find params[:id]
    item.update item_params
    redirect_to item
  end

  def show
    @item = Item.find_by :id => params[:id]
  end

  def destroy
    items = Item.find params[:id]
    items.destroy
    redirect_to items_path
  end

  private
  def item_params
    params.require(:item).permit(:part_number, :list_price)
  end


end
