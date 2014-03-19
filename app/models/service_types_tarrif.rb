class ServiceTypesTarrif < ActiveRecord::Base
  belongs_to :service_type
  belongs_to :tarrif
end
