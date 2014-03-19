# Schemat tygodniowy przypisania służby
# W odróżnieniu od ServiceWeeklySchema nie może mieć przypisanych takich samych schematów dziennych
# Każdy schemat dzienny (DutyDailySchema) opisuje przypisanie ministrantów do służb opisanych w dziennym schemacie służby (ServiceDailySchema)
# Każdy pojedynczy element DutyDaily jest pojedynczym elementem opisującym przypisanie ministrantów do Służby w danym dniu
# DutyDaily jest przypisany podobnie jak ServiceDaily do pojedynczej celebracji danego dnia (CdsCds)

class DutyWeeklySchema < ActiveRecord::Base
  belongs_to :sunday, :class_name => 'DutyDailySchema', :foreign_key => 'sunday_id'
  belongs_to :monday, :class_name => 'DutyDailySchema', :foreign_key => 'monday_id'
  belongs_to :tuesday, :class_name => 'DutyDailySchema', :foreign_key => 'tuesday_id'
  belongs_to :wednesday, :class_name => 'DutyDailySchema', :foreign_key => 'wednesday_id'
  belongs_to :thursday, :class_name => 'DutyDailySchema', :foreign_key => 'thursday_id'
  belongs_to :friday, :class_name => 'DutyDailySchema', :foreign_key => 'friday_id'
  belongs_to :saturday, :class_name => 'DutyDailySchema', :foreign_key => 'saturday_id'
  belongs_to :service_weekly_schema

  accepts_nested_attributes_for :sunday#, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :monday#, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :tuesday#, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :wednesday#, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :thursday#, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :friday#, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :saturday#, :reject_if => :all_blank, :allow_destroy => true

  def self.fromServiceWeeklySchema(service_weekly_schema)
  	duty_weekly_schema = DutyWeeklySchema.new
  	duty_weekly_schema.service_weekly_schema = service_weekly_schema
  	duty_weekly_schema.sunday = DutyDailySchema.fromServiceDailySchema(service_weekly_schema.sunday)
  	duty_weekly_schema.monday = DutyDailySchema.fromServiceDailySchema(service_weekly_schema.monday)
  	duty_weekly_schema.tuesday = DutyDailySchema.fromServiceDailySchema(service_weekly_schema.tuesday)
  	duty_weekly_schema.wednesday = DutyDailySchema.fromServiceDailySchema(service_weekly_schema.wednesday)
  	duty_weekly_schema.thursday = DutyDailySchema.fromServiceDailySchema(service_weekly_schema.thursday)
  	duty_weekly_schema.friday = DutyDailySchema.fromServiceDailySchema(service_weekly_schema.friday)
  	duty_weekly_schema.saturday = DutyDailySchema.fromServiceDailySchema(service_weekly_schema.saturday)
  	return duty_weekly_schema
  end

end
