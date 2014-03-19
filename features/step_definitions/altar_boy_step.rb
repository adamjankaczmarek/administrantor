Given(/^I have altar boys named (.+)$/) do |names|
  names.split(", ").each do |first_last|
  	first, last = first_last.split(" ")
  	AltarBoy.create!(:first_name => first, :last_name => last)
  end
end