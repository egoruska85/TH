class Type < ApplicationRecord
  has_many :purchase
  has_many :sale
end
