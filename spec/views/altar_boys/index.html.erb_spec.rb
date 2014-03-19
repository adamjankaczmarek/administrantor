require 'spec_helper'

describe "altar_boys/index" do
  before(:each) do
    assign(:altar_boys, [
      stub_model(AltarBoy,
        :name => "Name"
      ),
      stub_model(AltarBoy,
        :name => "Name"
      )
    ])
  end

  it "renders a list of altar_boys" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
