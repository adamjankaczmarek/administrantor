class CelebrationDaily < ActiveRecord::Base
  belongs_to :celebration_type
  belongs_to :celebration_daily_schemas

  def to_s
    "#{name}"
  end

end
