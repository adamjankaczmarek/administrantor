require 'spec_helper'

describe "tariff_entries/show" do
  before(:each) do
    @tariff_entry = assign(:tariff_entry, stub_model(TariffEntry,
      :points => 1.5,
      :tariff => nil,
      :celebration_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
