class AltarBoy < ActiveRecord::Base
	has_many :altar_boy_duties
	#has_and_belongs_to_many :duty_dailies, :through => :altar_boy_duties, :class_name => 'DutyDaily'
end
