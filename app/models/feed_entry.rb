class FeedEntry < ActiveRecord::Base
validates :title, :published_at, :content, presence: true
  def self.update_from_feed(feed_url)
    feed = Feedjira::Feed.fetch_and_parse(feed_url)
    add_entries(feed.entries)
  end

  # def self.update_from_feed_continuously(feed_url, delay_interval = 1.day)
  #   feed = Feedjira::Feed.fetch_and_parse(feed_url)
  #   add_entries(feed.entries)
  #   loop do
  #     sleep delay_interval
  #     feed = Feedjira::Feed.upated(feed_url)
  #     add_entries(feed.new_entries) if feed.updated?
  #   end
  # end

  private

  def self.add_entries(entries)
    entries.each do |entry|
      unless exists? title: entry.title
        create!(
          published_at: entry.published.sanitize,
          title: entry.title.sanitize,
          content: entry.content.sanitize
          )
      end
    end
  end
end
