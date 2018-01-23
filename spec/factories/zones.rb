FactoryBot.define do
  sequence :number do |n|
    n
  end

  factory :zone do
    number
    cost 10
  end
end
