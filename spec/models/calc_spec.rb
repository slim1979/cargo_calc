require 'rails_helper'

RSpec.describe Calc, type: :model do
  it { should validate_presence_of :delivery_from }
  it { should validate_presence_of :delivery_to }
  it { should validate_presence_of :cargo_width }
  it { should validate_presence_of :cargo_heigth }
  it { should validate_presence_of :cargo_depth }
end
