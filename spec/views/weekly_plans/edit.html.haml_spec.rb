require 'spec_helper'

describe "weekly_plans/edit" do
  before(:each) do
    @weekly_plan = assign(:weekly_plan, stub_model(WeeklyPlan,
      :name => "",
      :week_start => "",
      :week_end => "",
      :duty_weekly_schema => nil
    ))
  end

  it "renders the edit weekly_plan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", weekly_plan_path(@weekly_plan), "post" do
      assert_select "input#weekly_plan_name[name=?]", "weekly_plan[name]"
      assert_select "input#weekly_plan_week_start[name=?]", "weekly_plan[week_start]"
      assert_select "input#weekly_plan_week_end[name=?]", "weekly_plan[week_end]"
      assert_select "input#weekly_plan_duty_weekly_schema[name=?]", "weekly_plan[duty_weekly_schema]"
    end
  end
end
