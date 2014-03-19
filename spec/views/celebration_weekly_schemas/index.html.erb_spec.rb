require 'spec_helper'

describe "celebration_weekly_schemas/index" do
  before(:each) do
    assign(:celebration_weekly_schemas, [
      stub_model(CelebrationWeeklySchema,
        :name => "Name",
        :sunday => nil,
        :monday => nil,
        :tuesday => nil,
        :wednesday => nil,
        :thursday => nil,
        :friday => nil,
        :saturday => nil
      ),
      stub_model(CelebrationWeeklySchema,
        :name => "Name",
        :sunday => nil,
        :monday => nil,
        :tuesday => nil,
        :wednesday => nil,
        :thursday => nil,
        :friday => nil,
        :saturday => nil
      )
    ])
  end

  it "renders a list of celebration_weekly_schemas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
