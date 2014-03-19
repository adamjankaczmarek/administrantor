class Presence < ActiveRecord::Base
  belongs_to :altar_boy
  belongs_to :service_daily
  belongs_to :week
end
