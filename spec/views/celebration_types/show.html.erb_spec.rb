require 'spec_helper'

describe "celebration_types/show" do
  before(:each) do
    @celebration_type = assign(:celebration_type, stub_model(CelebrationType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
