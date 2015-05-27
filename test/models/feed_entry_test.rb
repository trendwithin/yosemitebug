require "test_helper"

class FeedEntryTest < ActiveSupport::TestCase

  def feed_entry
    @feed_entry ||= FeedEntry.new(published: Time.now, title: "New Title", content: "This is some content")
  end

  def test_valid
    assert feed_entry.valid?
  end

  test 'empty title is invalid' do
    feed_entry.title = '   '
    assert_not feed_entry.valid?
  end

  test 'empty content is invalid' do
    feed_entry.content = '    '
    assert_not feed_entry.valid?
  end

  test 'empty published at is invalid' do
    feed_entry.published = ''
    assert_not feed_entry.valid?
  end
end
