class Menu < ActiveRecord::Base
  validates :item, :description, :price, :meal, presence: true
end
