# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :duty_weekly_schema do
    sunday nil
    monday nil
    tuesday nil
    wednesday nil
    thursday nil
    friday nil
    saturday nil
    name "MyString"
  end
end
