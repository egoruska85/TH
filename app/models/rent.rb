class Rent < ApplicationRecord
  belongs_to :region
  belongs_to :typesofrent
  belongs_to :brand
  has_one_attached :image
  has_many_attached :images
end
