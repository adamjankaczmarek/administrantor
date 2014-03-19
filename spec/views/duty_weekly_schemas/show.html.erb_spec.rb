require 'spec_helper'

describe "duty_weekly_schemas/show" do
  before(:each) do
    @duty_weekly_schema = assign(:duty_weekly_schema, stub_model(DutyWeeklySchema,
      :sunday => nil,
      :monday => nil,
      :tuesday => nil,
      :wednesday => nil,
      :thursday => nil,
      :friday => nil,
      :saturday => nil,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Name/)
  end
end
