require 'rails_helper'

RSpec.describe City, type: :model do
  it { should belong_to :zone }
  it { should validate_presence_of :title }
end
