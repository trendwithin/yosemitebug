class HomeController < ApplicationController
  def index
    @article = FeedEntry.first
    @timeline = Client.user_timeline('yosemitebug', count: 5)
  end

  def homebody
  end
end
