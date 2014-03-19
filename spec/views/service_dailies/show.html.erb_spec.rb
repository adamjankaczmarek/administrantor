require 'spec_helper'

describe "service_dailies/show" do
  before(:each) do
    @service_daily = assign(:service_daily, stub_model(ServiceDaily,
      :type => "Type",
      :related => nil,
      :cdscds => nil,
      :sds => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
