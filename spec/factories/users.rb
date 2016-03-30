FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| 'testuser#{n}@example.com' }
    password 'Password1234'
  end
end
