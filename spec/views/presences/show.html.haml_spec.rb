require 'spec_helper'

describe "presences/show" do
  before(:each) do
    @presence = assign(:presence, stub_model(Presence,
      :altar_boy => nil,
      :celebration => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
