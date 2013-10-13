class ItemsController < ApplicationController
	def new
    @categories = Category.all
    @item = Item.new
	end

  def create
    @item = Item.new(item_params)
   
    if @item.save
      redirect_to items_path
    else
      render 'new'
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def index
    @items = Item.all
  end

  def edit
    @item = Item.find(params[:id])
    @categories = Category.all
  end

  def update
    @item = Item.find(params[:id])
 
    if @item.update(item_params)
      redirect_to items_path
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
 
  redirect_to items_path
  end

  private
    def item_params
      params.require(:item).permit(:description, :category_ids => [])
    end

end