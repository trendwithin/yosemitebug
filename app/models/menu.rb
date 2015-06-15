class Menu < ActiveRecord::Base
  belongs_to :user
  validates :item, :description, :price, :meal, presence: true
end
