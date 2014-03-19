require 'spec_helper'

describe "celebration_weekly_schemas/show" do
  before(:each) do
    @celebration_weekly_schema = assign(:celebration_weekly_schema, stub_model(CelebrationWeeklySchema,
      :name => "Name",
      :sunday => nil,
      :monday => nil,
      :tuesday => nil,
      :wednesday => nil,
      :thursday => nil,
      :friday => nil,
      :saturday => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
