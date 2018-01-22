class Calc < ApplicationRecord
  validates :delivery_from_id, :delivery_to_id, :cargo_width, :cargo_height, :cargo_depth, presence: true

  belongs_to :delivery_from, class_name: 'City', foreign_key: :delivery_from_id
  belongs_to :delivery_to, class_name: 'City', foreign_key: :delivery_to_id

  before_create :calculate_cost

  private

  def calculate_cost
    self.value_weight = (cargo_width * cargo_height * cargo_depth) / 5000
    self.cost = [delivery_from.zone.cost, delivery_to.zone.cost].max * value_weight
  end
end
