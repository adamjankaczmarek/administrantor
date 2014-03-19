require 'spec_helper'

describe "duty_dailies/new" do
  before(:each) do
    assign(:duty_daily, stub_model(DutyDaily,
      :duty_daily_schema => nil,
      :service_daily => nil
    ).as_new_record)
  end

  it "renders new duty_daily form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", duty_dailies_path, "post" do
      assert_select "input#duty_daily_duty_daily_schema[name=?]", "duty_daily[duty_daily_schema]"
      assert_select "input#duty_daily_service_daily[name=?]", "duty_daily[service_daily]"
    end
  end
end
