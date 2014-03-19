require 'spec_helper'

describe "duty_weekly_schemas/edit" do
  before(:each) do
    @duty_weekly_schema = assign(:duty_weekly_schema, stub_model(DutyWeeklySchema,
      :sunday => nil,
      :monday => nil,
      :tuesday => nil,
      :wednesday => nil,
      :thursday => nil,
      :friday => nil,
      :saturday => nil,
      :name => "MyString"
    ))
  end

  it "renders the edit duty_weekly_schema form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", duty_weekly_schema_path(@duty_weekly_schema), "post" do
      assert_select "input#duty_weekly_schema_sunday[name=?]", "duty_weekly_schema[sunday]"
      assert_select "input#duty_weekly_schema_monday[name=?]", "duty_weekly_schema[monday]"
      assert_select "input#duty_weekly_schema_tuesday[name=?]", "duty_weekly_schema[tuesday]"
      assert_select "input#duty_weekly_schema_wednesday[name=?]", "duty_weekly_schema[wednesday]"
      assert_select "input#duty_weekly_schema_thursday[name=?]", "duty_weekly_schema[thursday]"
      assert_select "input#duty_weekly_schema_friday[name=?]", "duty_weekly_schema[friday]"
      assert_select "input#duty_weekly_schema_saturday[name=?]", "duty_weekly_schema[saturday]"
      assert_select "input#duty_weekly_schema_name[name=?]", "duty_weekly_schema[name]"
    end
  end
end
