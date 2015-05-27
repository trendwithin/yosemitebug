class HomeController < ApplicationController
  def index
    @article = FeedEntry.first
  end
end
