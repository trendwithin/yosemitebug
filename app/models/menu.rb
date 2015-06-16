class Menu < ActiveRecord::Base
  belongs_to :user
  validates :item, :description, :price, :meal, presence: true

  scope :breakfast, -> { where(meal: 'breakfast') }
  scope :lunch, -> { where(meal: 'lunch') }
  scope :dinner, -> { where(meal: 'dinner') }
end
