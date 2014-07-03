class Presence < ActiveRecord::Base
  belongs_to :altar_boy
  belongs_to :celebration
end
