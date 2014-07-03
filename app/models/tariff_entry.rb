class TariffEntry < ActiveRecord::Base
  belongs_to :tariff
  belongs_to :celebration_type
end
