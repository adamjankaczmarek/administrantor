require 'spec_helper'

describe "weekly_plans/show" do
  before(:each) do
    @weekly_plan = assign(:weekly_plan, stub_model(WeeklyPlan,
      :name => "",
      :week_start => "",
      :week_end => "",
      :duty_weekly_schema => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
