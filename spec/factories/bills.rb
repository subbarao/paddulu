# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bill do
    store "MyString"
    bought_on "2014-07-15"
    user nil
    total 1.5
  end
end
