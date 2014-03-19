class AltarBoyDuty < ActiveRecord::Base
  belongs_to :altar_boy
  belongs_to :duty_daily

  accepts_nested_attributes_for :altar_boy, :reject_if => :all_blank
end
