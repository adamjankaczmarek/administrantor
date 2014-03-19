require 'spec_helper'

describe "duty_dailies/edit" do
  before(:each) do
    @duty_daily = assign(:duty_daily, stub_model(DutyDaily,
      :duty_daily_schema => nil,
      :service_daily => nil
    ))
  end

  it "renders the edit duty_daily form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", duty_daily_path(@duty_daily), "post" do
      assert_select "input#duty_daily_duty_daily_schema[name=?]", "duty_daily[duty_daily_schema]"
      assert_select "input#duty_daily_service_daily[name=?]", "duty_daily[service_daily]"
    end
  end
end
