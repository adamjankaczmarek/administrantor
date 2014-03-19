require 'spec_helper'

describe "service_daily_schemas/show" do
  before(:each) do
    @service_daily_schema = assign(:service_daily_schema, stub_model(ServiceDailySchema,
      :celebration_daily_schema => "",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Name/)
  end
end
