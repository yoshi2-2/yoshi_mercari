class Item < ApplicationRecord
  has_many :images
  has_many :comments
  belongs_to :user
  belongs_to :bottom_category
  belongs_to :brand
  has_one :order
end
