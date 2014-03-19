require 'spec_helper'

describe "altar_boy_duties/show" do
  before(:each) do
    @altar_boy_duty = assign(:altar_boy_duty, stub_model(AltarBoyDuty,
      :altar_boy => nil,
      :duty => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
