# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tariff_entry do
    points 1.5
    tariff nil
    celebration_type nil
  end
end
