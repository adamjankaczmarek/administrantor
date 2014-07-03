require 'spec_helper'

describe "tariff_entries/edit" do
  before(:each) do
    @tariff_entry = assign(:tariff_entry, stub_model(TariffEntry,
      :points => 1.5,
      :tariff => nil,
      :celebration_type => nil
    ))
  end

  it "renders the edit tariff_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tariff_entry_path(@tariff_entry), "post" do
      assert_select "input#tariff_entry_points[name=?]", "tariff_entry[points]"
      assert_select "input#tariff_entry_tariff[name=?]", "tariff_entry[tariff]"
      assert_select "input#tariff_entry_celebration_type[name=?]", "tariff_entry[celebration_type]"
    end
  end
end
