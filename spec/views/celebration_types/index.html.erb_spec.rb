require 'spec_helper'

describe "celebration_types/index" do
  before(:each) do
    assign(:celebration_types, [
      stub_model(CelebrationType,
        :name => "Name"
      ),
      stub_model(CelebrationType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of celebration_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
