require 'rails_helper'

RSpec.describe Calc, type: :model do
  it { should validate_presence_of :delivery_from_id }
  it { should validate_presence_of :delivery_to_id }
  it { should validate_presence_of :cargo_width }
  it { should validate_presence_of :cargo_height }
  it { should validate_presence_of :cargo_depth }
  it { should belong_to :delivery_from }
  it { should belong_to :delivery_to }
end
