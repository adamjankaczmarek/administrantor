require 'spec_helper'

describe "celebration_daily_schemas/index" do
  before(:each) do
    assign(:celebration_daily_schemas, [
      stub_model(CelebrationDailySchema,
        :name => "Name"
      ),
      stub_model(CelebrationDailySchema,
        :name => "Name"
      )
    ])
  end

  it "renders a list of celebration_daily_schemas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
