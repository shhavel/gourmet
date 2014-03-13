# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    restaurant_id 1
    datetime "2014-03-13 02:00:12"
    quantity 1
    name "MyString"
    phone "MyString"
    email "MyString"
  end
end
