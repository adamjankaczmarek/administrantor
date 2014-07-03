require 'spec_helper'

describe "tariff_entries/index" do
  before(:each) do
    assign(:tariff_entries, [
      stub_model(TariffEntry,
        :points => 1.5,
        :tariff => nil,
        :celebration_type => nil
      ),
      stub_model(TariffEntry,
        :points => 1.5,
        :tariff => nil,
        :celebration_type => nil
      )
    ])
  end

  it "renders a list of tariff_entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
