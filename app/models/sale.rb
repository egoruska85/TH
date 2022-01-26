class Sale < ApplicationRecord
  belongs_to :type
  belongs_to :region
  belongs_to :brand
  belongs_to :model
  has_one_attached :image
  has_many_attached :images
end
