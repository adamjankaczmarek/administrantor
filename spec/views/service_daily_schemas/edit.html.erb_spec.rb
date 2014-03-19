require 'spec_helper'

describe "service_daily_schemas/edit" do
  before(:each) do
    @service_daily_schema = assign(:service_daily_schema, stub_model(ServiceDailySchema,
      :celebration_daily_schema => "",
      :name => "MyString"
    ))
  end

  it "renders the edit service_daily_schema form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", service_daily_schema_path(@service_daily_schema), "post" do
      assert_select "input#service_daily_schema_celebration_daily_schema[name=?]", "service_daily_schema[celebration_daily_schema]"
      assert_select "input#service_daily_schema_name[name=?]", "service_daily_schema[name]"
    end
  end
end
