# Schemat tygodniowy służby - przypisanie dla każdego dnia tygodnia
# odpowiadającego dziennego planu służby

class ServiceWeeklySchema < ActiveRecord::Base
  belongs_to :sunday, :class_name => 'ServiceDailySchema', :foreign_key => 'sunday_id'
  belongs_to :monday, :class_name => 'ServiceDailySchema', :foreign_key => 'monday_id'
  belongs_to :tuesday, :class_name => 'ServiceDailySchema', :foreign_key => 'tuesday_id'
  belongs_to :wednesday, :class_name => 'ServiceDailySchema', :foreign_key => 'wednesday_id'
  belongs_to :thursday, :class_name => 'ServiceDailySchema', :foreign_key => 'thursday_id'
  belongs_to :friday, :class_name => 'ServiceDailySchema', :foreign_key => 'friday_id'
  belongs_to :saturday, :class_name => 'ServiceDailySchema', :foreign_key => 'saturday_id'

  # def self.fromCelebrationWeeklySchema(celebration)
  # 	service_plan = ServiceWeeklySchema.new
  # 	# Sunday
  #   service_plan.sunday = ServiceDailySchema.fromCelebrationDailySchema(celebration.sunday)
  #   # Monday
  #   service_plan.monday = ServiceDailySchema.fromCelebrationDailySchema(celebration.monday)
  #   # Tuesday
  #   service_plan.tuesday = ServiceDailySchema.fromCelebrationDailySchema(celebration.tuesday)
  #   # Wednesday
  #   service_plan.wednesday = ServiceDailySchema.fromCelebrationDailySchema(celebration.wednesday)
  #   # Thursday
  #   service_plan.thursday = ServiceDailySchema.fromCelebrationDailySchema(celebration.thursday)
  #   # Friday
  #   service_plan.friday = ServiceDailySchema.fromCelebrationDailySchema(celebration.friday)
  #   # Saturday
  #   service_plan.saturday = ServiceDailySchema.fromCelebrationDailySchema(celebration.saturday)
  # end
end
