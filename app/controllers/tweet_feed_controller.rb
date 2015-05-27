class TweetFeedController < ApplicationController
  def index
    @timeline = Client.user_timeline('yosemitebug', count: 1)
  end
end
