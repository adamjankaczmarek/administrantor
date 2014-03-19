require 'spec_helper'

describe "altar_boy_duties/index" do
  before(:each) do
    assign(:altar_boy_duties, [
      stub_model(AltarBoyDuty,
        :altar_boy => nil,
        :duty => nil
      ),
      stub_model(AltarBoyDuty,
        :altar_boy => nil,
        :duty => nil
      )
    ])
  end

  it "renders a list of altar_boy_duties" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
