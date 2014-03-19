require 'spec_helper'

describe "weeks/index" do
  before(:each) do
    assign(:weeks, [
      stub_model(Week,
        :year => 1,
        :week_no => 2
      ),
      stub_model(Week,
        :year => 1,
        :week_no => 2
      )
    ])
  end

  it "renders a list of weeks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
