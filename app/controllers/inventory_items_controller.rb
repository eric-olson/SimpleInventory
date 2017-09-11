class InventoryItemsController < ApplicationController
  def index
    @inventory_items = InventoryItem.all
  end

  def show
    @inventory_item = InventoryItem.find(params[:id])
  end

  def new
    @inventory_item = InventoryItem.new
  end

  def edit
    @inventory_item = InventoryItem.find(params[:id])
  end

  def create
    @inventory_item = InventoryItem.new(inventory_item_params)

    @inventory_item.save
    redirect_to @inventory_item
  end
  def update
    @inventory_item = InventoryItem.find(params[:id])

    @inventory_item.update(inventory_item_params)
    redirect_to @inventory_item
  end

  private
    def inventory_item_params
      params.require(:inventory_item).permit(:name, :description, :tag_id)
    end
end
