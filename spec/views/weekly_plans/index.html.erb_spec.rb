require 'spec_helper'

describe "weekly_plans/index" do
  before(:each) do
    assign(:weekly_plans, [
      stub_model(WeeklyPlan,
        :name => "Name",
        :celebration => nil,
        :service => nil,
        :duty => nil
      ),
      stub_model(WeeklyPlan,
        :name => "Name",
        :celebration => nil,
        :service => nil,
        :duty => nil
      )
    ])
  end

  it "renders a list of weekly_plans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
