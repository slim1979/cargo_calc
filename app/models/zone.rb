class Zone < ApplicationRecord
  has_many :cities
  validates :cost, presence: true
end
