require 'spec_helper'

describe "duty_daily_schemas/edit" do
  before(:each) do
    @duty_daily_schema = assign(:duty_daily_schema, stub_model(DutyDailySchema,
      :name => "MyString",
      :service_daily_schema => nil
    ))
  end

  it "renders the edit duty_daily_schema form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", duty_daily_schema_path(@duty_daily_schema), "post" do
      assert_select "input#duty_daily_schema_name[name=?]", "duty_daily_schema[name]"
      assert_select "input#duty_daily_schema_service_daily_schema[name=?]", "duty_daily_schema[service_daily_schema]"
    end
  end
end
