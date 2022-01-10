class Region < ApplicationRecord
  has_many :sale
  has_many :purchase
end
