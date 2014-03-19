require 'spec_helper'

describe "weekly_plans/show" do
  before(:each) do
    @weekly_plan = assign(:weekly_plan, stub_model(WeeklyPlan,
      :name => "Name",
      :celebration => nil,
      :service => nil,
      :duty => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
