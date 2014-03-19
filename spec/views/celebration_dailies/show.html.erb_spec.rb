require 'spec_helper'

describe "celebration_dailies/show" do
  before(:each) do
    @celebration_daily = assign(:celebration_daily, stub_model(CelebrationDaily,
      :name => "Name",
      :hour => 1,
      :celebration_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(//)
  end
end
