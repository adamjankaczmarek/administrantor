require 'spec_helper'

describe "presences/index" do
  before(:each) do
    assign(:presences, [
      stub_model(Presence,
        :altar_boy => nil,
        :celebration => nil
      ),
      stub_model(Presence,
        :altar_boy => nil,
        :celebration => nil
      )
    ])
  end

  it "renders a list of presences" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
