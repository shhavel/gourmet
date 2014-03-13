# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :atmosfere do
    sequence(:name) { |n| "Atmosfere #{n}" }
  end
end
