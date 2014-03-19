require 'spec_helper'

describe "service_types_tarrifs/edit" do
  before(:each) do
    @service_types_tarrif = assign(:service_types_tarrif, stub_model(ServiceTypesTarrif,
      :service_type => nil,
      :tarrif => nil,
      :points => 1
    ))
  end

  it "renders the edit service_types_tarrif form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", service_types_tarrif_path(@service_types_tarrif), "post" do
      assert_select "input#service_types_tarrif_service_type[name=?]", "service_types_tarrif[service_type]"
      assert_select "input#service_types_tarrif_tarrif[name=?]", "service_types_tarrif[tarrif]"
      assert_select "input#service_types_tarrif_points[name=?]", "service_types_tarrif[points]"
    end
  end
end
