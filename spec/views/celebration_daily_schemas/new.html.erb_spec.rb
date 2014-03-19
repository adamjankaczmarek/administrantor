require 'spec_helper'

describe "celebration_daily_schemas/new" do
  before(:each) do
    assign(:celebration_daily_schema, stub_model(CelebrationDailySchema,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new celebration_daily_schema form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", celebration_daily_schemas_path, "post" do
      assert_select "input#celebration_daily_schema_name[name=?]", "celebration_daily_schema[name]"
    end
  end
end
