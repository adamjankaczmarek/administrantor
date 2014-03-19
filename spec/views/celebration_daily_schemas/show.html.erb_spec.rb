require 'spec_helper'

describe "celebration_daily_schemas/show" do
  before(:each) do
    @celebration_daily_schema = assign(:celebration_daily_schema, stub_model(CelebrationDailySchema,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
