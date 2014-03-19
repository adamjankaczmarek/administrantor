require 'spec_helper'

describe "weekly_plans/new" do
  before(:each) do
    assign(:weekly_plan, stub_model(WeeklyPlan,
      :name => "MyString",
      :celebration => nil,
      :service => nil,
      :duty => nil
    ).as_new_record)
  end

  it "renders new weekly_plan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", weekly_plans_path, "post" do
      assert_select "input#weekly_plan_name[name=?]", "weekly_plan[name]"
      assert_select "input#weekly_plan_celebration[name=?]", "weekly_plan[celebration]"
      assert_select "input#weekly_plan_service[name=?]", "weekly_plan[service]"
      assert_select "input#weekly_plan_duty[name=?]", "weekly_plan[duty]"
    end
  end
end
