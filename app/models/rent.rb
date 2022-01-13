class Rent < ApplicationRecord
  belongs_to :region
  belongs_to :typesofrent
  has_one_attached :image
  has_many_attached :images
end
