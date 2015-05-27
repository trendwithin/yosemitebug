class FeedEntry < ActiveRecord::Base
validates :title, :published, :content, presence: true
  def self.update_from_feed(feed_url)
    feed = Feedjira::Feed.fetch_and_parse(feed_url)
    add_entries(feed.entries)
  end

  private

  def self.add_entries(entries)
    entries.each do |entry|
      unless exists? title: entry.title
        create!(
          published: entry.published,
          title: entry.title,
          content: entry.content
          )
      end
    end
  end
end
