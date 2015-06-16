class MenusController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_menu, only:  [:show, :edit, :update, :destroy]
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
  end

  def edit
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
    respond_to do |format|
      if @menu.update(menu_params)
        format.html { redirect_to @menu, notice: 'Menu Item was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @menu.destroy
    respond_to do |format|
      format.html { redirect_to menus_url, notice: 'Menu Item was successfully deleted.'}
    end
  end


  private

    def set_menu
      @menu = Menu.find(params[:id])
      authorize @menu
    end

    def menu_params
      params.require(:menu).permit(:item, :description, :price, :meal)
    end
end
