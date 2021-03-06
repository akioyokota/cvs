class MenusController < ApplicationController

  def index
    @menus = Menu.all
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def new
    @menu = Menu.new
  end

  def destroy
    menu = Menu.find(params[:id])
    menu.destroy
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to menus_path
    else
      render :new
    end
  end

  private
  def menu_params
    params.require(:menu).permit(:name, :image, :price, :calorie, :protein, :fat, :carbo)
  end
end
