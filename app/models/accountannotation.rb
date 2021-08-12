class Accountannotation < ApplicationRecord
  belongs_to :annotation
  belongs_to :account
end
