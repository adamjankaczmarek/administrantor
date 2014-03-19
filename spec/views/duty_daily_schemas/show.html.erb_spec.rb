require 'spec_helper'

describe "duty_daily_schemas/show" do
  before(:each) do
    @duty_daily_schema = assign(:duty_daily_schema, stub_model(DutyDailySchema,
      :name => "Name",
      :service_daily_schema => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
  end
end
