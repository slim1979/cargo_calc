FactoryBot.define do
  sequence :title do
    ('a'..'z').to_a.sample(10).join
  end

  factory :city do
    title
  end
end
