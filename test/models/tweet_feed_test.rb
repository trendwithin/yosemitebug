require "test_helper"

class TweetFeedTest < ActiveSupport::TestCase

  def tweet_feed
    @tweet_feed ||= TweetFeed.new
  end

  def test_valid
    assert tweet_feed.valid?
  end

end
