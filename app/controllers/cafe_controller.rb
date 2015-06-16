class CafeController < ApplicationController
  def index
    @breakfast = Menu.breakfast
    @lunch = Menu.lunch
    @dinner = Menu.dinner
    @menu = Menu.all
  end
end
