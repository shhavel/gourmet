# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :restaurant do
    name "MyString"
    address "MyString"
    longitude "9.99"
    latitude "9.99"
    averagesum 1.5
    worktime "MyString"
    phone "MyString"
    imageurls ["MyText"]
    description "MyText"
    rating 1.5
    atmosfere_ids []
  end
end
