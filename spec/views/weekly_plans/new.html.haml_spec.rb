require 'spec_helper'

describe "weekly_plans/new" do
  before(:each) do
    assign(:weekly_plan, stub_model(WeeklyPlan,
      :name => "",
      :week_start => "",
      :week_end => "",
      :duty_weekly_schema => nil
    ).as_new_record)
  end

  it "renders new weekly_plan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", weekly_plans_path, "post" do
      assert_select "input#weekly_plan_name[name=?]", "weekly_plan[name]"
      assert_select "input#weekly_plan_week_start[name=?]", "weekly_plan[week_start]"
      assert_select "input#weekly_plan_week_end[name=?]", "weekly_plan[week_end]"
      assert_select "input#weekly_plan_duty_weekly_schema[name=?]", "weekly_plan[duty_weekly_schema]"
    end
  end
end
