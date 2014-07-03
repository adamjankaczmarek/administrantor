class DutyDaily < ActiveRecord::Base
  belongs_to :duty_daily_schema
  belongs_to :service_daily

  has_many :altar_boy_duties
  has_many :altar_boys, :through => :altar_boy_duties, :class_name => 'AltarBoy'
  #has_and_belongs_to_many :altar_boys, :through => :altar_boy_duties, :class_name => 'AltarBoy'

  accepts_nested_attributes_for :altar_boy_duties
  #accepts_nested_attributes_for :altar_boys

  def self.fromServiceDaily(duty_daily_schema, service_daily)
  	duty_daily = DutyDaily.new
  	duty_daily.service_daily = service_daily
  	return duty_daily
  end

  def service_name_s
    service_daily.short_s
  end

  def to_s
  	s = ""
  	altar_boys.each do |altar_boy|
  		s += altar_boy.name + " "
  	end
  	return s
  end
end
