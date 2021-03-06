require 'spec_helper'

describe "celebration_dailies/index" do
  before(:each) do
    assign(:celebration_dailies, [
      stub_model(CelebrationDaily,
        :name => "Name",
        :hour => 1,
        :celebration_type => nil
      ),
      stub_model(CelebrationDaily,
        :name => "Name",
        :hour => 1,
        :celebration_type => nil
      )
    ])
  end

  it "renders a list of celebration_dailies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
