FactoryBot.define do
  sequence :number do |n|
    n
  end
  sequence :cost do |n|
    10*n
  end

  factory :zone do
    number
    cost
  end
end
