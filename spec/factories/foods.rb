FactoryGirl.define do
  factory :food do
    sequence(:name) { |n| "Food Item #{n}" }
    calories { Random.rand(100) }
  end
end
