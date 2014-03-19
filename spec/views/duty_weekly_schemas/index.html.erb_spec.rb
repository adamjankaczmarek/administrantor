require 'spec_helper'

describe "duty_weekly_schemas/index" do
  before(:each) do
    assign(:duty_weekly_schemas, [
      stub_model(DutyWeeklySchema,
        :sunday => nil,
        :monday => nil,
        :tuesday => nil,
        :wednesday => nil,
        :thursday => nil,
        :friday => nil,
        :saturday => nil,
        :name => "Name"
      ),
      stub_model(DutyWeeklySchema,
        :sunday => nil,
        :monday => nil,
        :tuesday => nil,
        :wednesday => nil,
        :thursday => nil,
        :friday => nil,
        :saturday => nil,
        :name => "Name"
      )
    ])
  end

  it "renders a list of duty_weekly_schemas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
