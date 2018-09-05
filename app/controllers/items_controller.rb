class ItemsController < ApplicationController
  before_action :set_dept
  before_action :set_items, only: [:show, :edit, :update, :destroy]

  def index
    @items = @dept.items
  end

  def show
    # render :show
  end

  def new
    @dept = @dept.items.new
    render partial: 'form'
  end

  def create
    @dept = @dept.items.new(item_params)

    if @item.save
      redirect_to [@dept, @item]
    else
      render :new
    end
  end

  def edit
    render partial: 'form'
  end

  def update
   if @item.update(item_params)
    redirect_to [@dept, @item]
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to dept_items_path
  end

  private

  def set_dept
    @dept = Dept.find(params[:dept_id])
  end

  def set_items
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name)
  end
end

