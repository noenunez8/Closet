class Accountannotation < ApplicationRecord
  belongs_to :annotation
  belongs_to :account
  paginates_per 1
end
