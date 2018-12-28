class BottomCategorie < ApplicationRecord
  has_many :items
  belongs_to :mid_category
end
