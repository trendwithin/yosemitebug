class HomeController < ApplicationController
  def index
    @article = FeedEntry.first
    @timeline = Client.user_timeline('yosemitebug', count: 3)
  end
end
