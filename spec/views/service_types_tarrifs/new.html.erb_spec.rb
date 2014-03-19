require 'spec_helper'

describe "service_types_tarrifs/new" do
  before(:each) do
    assign(:service_types_tarrif, stub_model(ServiceTypesTarrif,
      :service_type => nil,
      :tarrif => nil,
      :points => 1
    ).as_new_record)
  end

  it "renders new service_types_tarrif form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", service_types_tarrifs_path, "post" do
      assert_select "input#service_types_tarrif_service_type[name=?]", "service_types_tarrif[service_type]"
      assert_select "input#service_types_tarrif_tarrif[name=?]", "service_types_tarrif[tarrif]"
      assert_select "input#service_types_tarrif_points[name=?]", "service_types_tarrif[points]"
    end
  end
end
