require 'spec_helper'

describe "service_dailies/index" do
  before(:each) do
    assign(:service_dailies, [
      stub_model(ServiceDaily,
        :type => "Type",
        :related => nil,
        :cdscds => nil,
        :sds => nil
      ),
      stub_model(ServiceDaily,
        :type => "Type",
        :related => nil,
        :cdscds => nil,
        :sds => nil
      )
    ])
  end

  it "renders a list of service_dailies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
