require 'spec_helper'

describe "tariffs/index" do
  before(:each) do
    assign(:tariffs, [
      stub_model(Tariff,
        :name => "Name"
      ),
      stub_model(Tariff,
        :name => "Name"
      )
    ])
  end

  it "renders a list of tariffs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
