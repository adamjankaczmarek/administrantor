class ServiceDaily < ActiveRecord::Base
  # Powiązany element ServiceDaily służby, który ma przypisany wspólny obiekt DailyDuty
  belongs_to :related, :class_name => 'ServiceDaily', :foreign_key => 'related_id'
  # Pojedyncza celebracja danego dnia, do której jest przypisana służba
  belongs_to :celebration_daily
  # Schemat dzienny służby, do którego należy dana służba
  belongs_to :service_daily_schema
  # Typ służby
  belongs_to :service_type
  #
  has_many :duty_dailies

  def self.fromCelebrationDaily(service_daily_schema, celebration_daily)
  	service_daily = ServiceDaily.new
  	service_daily.celebration_daily = celebration_daily
  	service_daily.service_daily_schema = service_daily_schema
    return service_daily
  end

  def duty_daily_for_schema(duty_daily_schema_id)
    duty_dailies.where(duty_daily_schema_id: duty_daily_schema_id).first
  end

  def short_s
    celebration_daily.to_s
  end

  def to_s
    service_daily_schema.to_s + celebration_daily.to_s
  end

  def duty_s(duty_daily_schema_id)
    if related != nil
      related.duty_daily_for_schema(duty_daily_schema_id).to_s
    else
      duty_daily_for_schema(duty_daily_schema_id).to_s
    end
  end

end
