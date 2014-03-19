class CelebrationWeeklySchema < ActiveRecord::Base
  belongs_to :sunday, :class_name => 'CelebrationDailySchema', :foreign_key => 'sunday_id'
  belongs_to :monday, :class_name => 'CelebrationDailySchema', :foreign_key => 'monday_id'
  belongs_to :tuesday, :class_name => 'CelebrationDailySchema', :foreign_key => 'tuesday_id'
  belongs_to :wednesday, :class_name => 'CelebrationDailySchema', :foreign_key => 'wednesday_id'
  belongs_to :thursday, :class_name => 'CelebrationDailySchema', :foreign_key => 'thursday_id'
  belongs_to :friday, :class_name => 'CelebrationDailySchema', :foreign_key => 'friday_id'
  belongs_to :saturday, :class_name => 'CelebrationDailySchema', :foreign_key => 'saturday_id'
end
