class CreateFeedEntries < ActiveRecord::Migration
  def change
    create_table :feed_entries do |t|
      t.string :published
      t.string :title
      t.string :content

      t.timestamps null: false
    end
    add_index :feed_entries, :id
  end
end
