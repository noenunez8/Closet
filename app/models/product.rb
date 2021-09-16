class Product < ApplicationRecord
  belongs_to :account
  paginates_per 1
end
