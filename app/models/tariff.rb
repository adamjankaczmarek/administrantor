class Tariff < ActiveRecord::Base
  has_many :tariff_entries
  accepts_nested_attributes_for :tariff_entries

  def self.entry_types
    return {:additional_presence => 0, :obligatory_presence => 1, :obligatory_absence => 2}
  end

  def self.entry_type_label(etype, ctype)
    case etype
    when 0
      return ctype.name + " - dodatkowa obecność"
    when 1
      return ctype.name + " - obowiązkowa obecność"
    when 2
      return ctype.name + " - nieobecność"
    else
      return ctype.name
    end
  end

  def entries_by_ctype
    result = {}
    CelebrationType.all.each do |ctype|
      result[ctype.id] = []
    end

    tariff_entries.order(:entry_type).each do |entry|
      result[entry.celebration_type.id] << entry
    end

    return result
  end

  def create_entries
    @tariff_entries = []
    CelebrationType.all.each do |ctype|
      Tariff.entry_types.values.each do |etype|
        entry = TariffEntry.new
        entry.tariff = self
        entry.celebration_type = ctype
        entry.points = 0.0
        entry.entry_type = etype
        @tariff_entries << entry
        entry.save
      end
    end
  end

end
