class Service < ApplicationRecord
  has_one_attached :image
  has_many_attached :iamges
  has_many :comments
end
