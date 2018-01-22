class City < ApplicationRecord
  belongs_to :zone
  validates :title, presence: true
end
