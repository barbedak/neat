class Series < ApplicationRecord
  has_many :product, dependent: :destroy
end
