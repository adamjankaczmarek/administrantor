require 'spec_helper'

describe "tariff_entries/new" do
  before(:each) do
    assign(:tariff_entry, stub_model(TariffEntry,
      :points => 1.5,
      :tariff => nil,
      :celebration_type => nil
    ).as_new_record)
  end

  it "renders new tariff_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tariff_entries_path, "post" do
      assert_select "input#tariff_entry_points[name=?]", "tariff_entry[points]"
      assert_select "input#tariff_entry_tariff[name=?]", "tariff_entry[tariff]"
      assert_select "input#tariff_entry_celebration_type[name=?]", "tariff_entry[celebration_type]"
    end
  end
end
