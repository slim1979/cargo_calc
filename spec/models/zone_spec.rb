require 'rails_helper'

RSpec.describe Zone, type: :model do
  it { should have_many :cities }
  it { should validate_presence_of :cost }
end
