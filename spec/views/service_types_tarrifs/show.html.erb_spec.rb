require 'spec_helper'

describe "service_types_tarrifs/show" do
  before(:each) do
    @service_types_tarrif = assign(:service_types_tarrif, stub_model(ServiceTypesTarrif,
      :service_type => nil,
      :tarrif => nil,
      :points => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1/)
  end
end
