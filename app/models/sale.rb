class Sale < ApplicationRecord
  belongs_to :type
  has_one_attached :image
  has_many_attached :images
end
