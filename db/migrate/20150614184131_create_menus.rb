class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :item
      t.text :description
      t.string :price
      t.string :meal

      t.timestamps null: false
    end
  end
end
