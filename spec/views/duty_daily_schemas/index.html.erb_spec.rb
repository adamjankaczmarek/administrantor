require 'spec_helper'

describe "duty_daily_schemas/index" do
  before(:each) do
    assign(:duty_daily_schemas, [
      stub_model(DutyDailySchema,
        :name => "Name",
        :service_daily_schema => nil
      ),
      stub_model(DutyDailySchema,
        :name => "Name",
        :service_daily_schema => nil
      )
    ])
  end

  it "renders a list of duty_daily_schemas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
