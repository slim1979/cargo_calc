class Calc < ApplicationRecord
  validates :delivery_from, :delivery_to, :cargo_width, :cargo_heigth, :cargo_depth, presence: true
end
