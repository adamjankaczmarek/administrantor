class CelebrationDailySchema < ActiveRecord::Base
  has_many :celebration_dailies
  accepts_nested_attributes_for :celebration_dailies#, :reject_if => :all_blank, :allow_destroy => true

  def to_s
  	all_celebrations = ""
    celebration_dailies.each do |c|
    	all_celebrations += " " + c.to_s
    end
    return all_celebrations
  end
end
