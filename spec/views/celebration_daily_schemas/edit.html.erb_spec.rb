require 'spec_helper'

describe "celebration_daily_schemas/edit" do
  before(:each) do
    @celebration_daily_schema = assign(:celebration_daily_schema, stub_model(CelebrationDailySchema,
      :name => "MyString"
    ))
  end

  it "renders the edit celebration_daily_schema form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", celebration_daily_schema_path(@celebration_daily_schema), "post" do
      assert_select "input#celebration_daily_schema_name[name=?]", "celebration_daily_schema[name]"
    end
  end
end
