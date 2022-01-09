class Sale < ApplicationRecord
  belongs_to :type
  belongs_to :region
  has_one_attached :image
  has_many_attached :images
end
