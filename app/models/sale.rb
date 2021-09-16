class Sale < ApplicationRecord
  belongs_to :product
  paginates_per 1
end
