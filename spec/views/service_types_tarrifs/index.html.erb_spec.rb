require 'spec_helper'

describe "service_types_tarrifs/index" do
  before(:each) do
    assign(:service_types_tarrifs, [
      stub_model(ServiceTypesTarrif,
        :service_type => nil,
        :tarrif => nil,
        :points => 1
      ),
      stub_model(ServiceTypesTarrif,
        :service_type => nil,
        :tarrif => nil,
        :points => 1
      )
    ])
  end

  it "renders a list of service_types_tarrifs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
