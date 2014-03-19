require 'spec_helper'

describe "duty_dailies/index" do
  before(:each) do
    assign(:duty_dailies, [
      stub_model(DutyDaily,
        :duty_daily_schema => nil,
        :service_daily => nil
      ),
      stub_model(DutyDaily,
        :duty_daily_schema => nil,
        :service_daily => nil
      )
    ])
  end

  it "renders a list of duty_dailies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
