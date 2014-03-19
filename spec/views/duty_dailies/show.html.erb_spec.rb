require 'spec_helper'

describe "duty_dailies/show" do
  before(:each) do
    @duty_daily = assign(:duty_daily, stub_model(DutyDaily,
      :duty_daily_schema => nil,
      :service_daily => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
