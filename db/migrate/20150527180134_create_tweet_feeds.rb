class CreateTweetFeeds < ActiveRecord::Migration
  def change
    create_table :tweet_feeds do |t|
      t.string :tweet_id
      t.string :screen_name
      t.text :content

      t.timestamps null: false
    end
    add_index :tweet_feeds, :id
  end
end
