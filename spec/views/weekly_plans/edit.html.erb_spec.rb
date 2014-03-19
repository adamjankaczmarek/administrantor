require 'spec_helper'

describe "weekly_plans/edit" do
  before(:each) do
    @weekly_plan = assign(:weekly_plan, stub_model(WeeklyPlan,
      :name => "MyString",
      :celebration => nil,
      :service => nil,
      :duty => nil
    ))
  end

  it "renders the edit weekly_plan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", weekly_plan_path(@weekly_plan), "post" do
      assert_select "input#weekly_plan_name[name=?]", "weekly_plan[name]"
      assert_select "input#weekly_plan_celebration[name=?]", "weekly_plan[celebration]"
      assert_select "input#weekly_plan_service[name=?]", "weekly_plan[service]"
      assert_select "input#weekly_plan_duty[name=?]", "weekly_plan[duty]"
    end
  end
end
