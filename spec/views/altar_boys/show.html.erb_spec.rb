require 'spec_helper'

describe "altar_boys/show" do
  before(:each) do
    @altar_boy = assign(:altar_boy, stub_model(AltarBoy,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
