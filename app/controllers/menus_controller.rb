class MenusController < ApplicationController
  # before_filter :authenticate_user!
  after_action :verify_authorized

  def index
    @menus = Menu.all
    authorize @menus
  end

  def new
    @menu = Menu.new
    authorize @menu
  end

  def show
    @menu = Menu.find(params[:id])
    authorize @menu
  end

  def create
    @menu = Menu.new(menu_params)
    authorize @menu
    respond_to do |format|
      if @menu.save
        format.html { redirect_to @menu, notice: 'Menu Item was successfully saved.'}
      else
        format.html { render :new }
      end
    end
  end

  def update
    @menu = Menu.find(params[:id])
    authorize @menu
    respond_to do |format|
      if @menu.update(menu_params)
        format.html { redirect_to @menu, notice: 'Menu Item was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    authorize @menu
    respond_to do |format|
      format.html { redirect_to menu_url, notice: 'Menu Item was successfully deleted.'}
    end
  end


  private
    def menu_params
      params.require(:menu).permit(:item, :description, :price, :meal)
    end
end
