require 'spec_helper'

describe "celebration_weekly_schemas/new" do
  before(:each) do
    assign(:celebration_weekly_schema, stub_model(CelebrationWeeklySchema,
      :name => "MyString",
      :sunday => nil,
      :monday => nil,
      :tuesday => nil,
      :wednesday => nil,
      :thursday => nil,
      :friday => nil,
      :saturday => nil
    ).as_new_record)
  end

  it "renders new celebration_weekly_schema form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", celebration_weekly_schemas_path, "post" do
      assert_select "input#celebration_weekly_schema_name[name=?]", "celebration_weekly_schema[name]"
      assert_select "input#celebration_weekly_schema_sunday[name=?]", "celebration_weekly_schema[sunday]"
      assert_select "input#celebration_weekly_schema_monday[name=?]", "celebration_weekly_schema[monday]"
      assert_select "input#celebration_weekly_schema_tuesday[name=?]", "celebration_weekly_schema[tuesday]"
      assert_select "input#celebration_weekly_schema_wednesday[name=?]", "celebration_weekly_schema[wednesday]"
      assert_select "input#celebration_weekly_schema_thursday[name=?]", "celebration_weekly_schema[thursday]"
      assert_select "input#celebration_weekly_schema_friday[name=?]", "celebration_weekly_schema[friday]"
      assert_select "input#celebration_weekly_schema_saturday[name=?]", "celebration_weekly_schema[saturday]"
    end
  end
end
