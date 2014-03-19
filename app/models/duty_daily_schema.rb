class DutyDailySchema < ActiveRecord::Base
  belongs_to :service_daily_schema
  has_many :duty_dailies
  accepts_nested_attributes_for :duty_dailies#, :reject_if => :all_blank, :allow_destroy => true

  def self.fromServiceDailySchema(service_daily_schema)
  	duty_daily_schema = DutyDailySchema.new
  	duty_daily_schema.service_daily_schema = service_daily_schema
  	service_daily_schema.service_dailies.each do |service_daily|
  		if service_daily.related == nil
  			duty_daily_schema.duty_dailies << DutyDaily.fromServiceDaily(duty_daily_schema, service_daily)
  		end
  	end
  	duty_daily_schema.save
  	return duty_daily_schema
  end

  def to_s
  	s = "\n"
  	service_daily_schema.service_dailies.each_with_index do |svc, index|
  		s += "<em>" + svc.celebration_daily.name + ":</em> "
  		if svc.related != nil
  			svc = ServiceDaily.find(svc.related)
  		end

		duty = svc.duty_daily_for_schema(id)

  		s += duty.to_s
  		s += "\n"
	end
	return s.gsub(/\n/, '<br/>').html_safe
  end
end
