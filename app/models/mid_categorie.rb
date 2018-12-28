class MidCategorie < ApplicationRecord
  has_many :bottoms_categories
  belongs_to :top_category
end
