# Schemat dzienny służby - opis kiedy i jaka służba ma miejsce danego dnia

class ServiceDailySchema < ActiveRecord::Base
	# Schemat dzienny celebracji, do którego należy dany schemat służby
	belongs_to :celebration_daily_schema
	#
	has_many :service_dailies
	accepts_nested_attributes_for :service_dailies

	def self.fromCelebrationDailySchema(celebration_daily_schema)
		service = ServiceDailySchema.new
		service.celebration_daily_schema = celebration_daily_schema
  		service.service_dailies = []

  		celebration_daily_schema.celebration_dailies.each do |celebration|
  			sd = ServiceDaily.fromCelebrationDaily(service, celebration)
  			sd.save
  			service.service_dailies << sd
  		end
  		return service
  	end

  	def to_s
  		"#{name}"
  	end
end
