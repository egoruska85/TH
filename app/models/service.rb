class Service < ApplicationRecord
  has_one_attached :image
  has_many_attached :iamges
end
