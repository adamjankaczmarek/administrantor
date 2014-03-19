require 'spec_helper'

describe "service_daily_schemas/index" do
  before(:each) do
    assign(:service_daily_schemas, [
      stub_model(ServiceDailySchema,
        :celebration_daily_schema => "",
        :name => "Name"
      ),
      stub_model(ServiceDailySchema,
        :celebration_daily_schema => "",
        :name => "Name"
      )
    ])
  end

  it "renders a list of service_daily_schemas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
