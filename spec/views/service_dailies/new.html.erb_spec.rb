require 'spec_helper'

describe "service_dailies/new" do
  before(:each) do
    assign(:service_daily, stub_model(ServiceDaily,
      :type => "",
      :related => nil,
      :cdscds => nil,
      :sds => nil
    ).as_new_record)
  end

  it "renders new service_daily form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", service_dailies_path, "post" do
      assert_select "input#service_daily_type[name=?]", "service_daily[type]"
      assert_select "input#service_daily_related[name=?]", "service_daily[related]"
      assert_select "input#service_daily_cdscds[name=?]", "service_daily[cdscds]"
      assert_select "input#service_daily_sds[name=?]", "service_daily[sds]"
    end
  end
end
