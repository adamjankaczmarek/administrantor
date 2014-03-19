require 'spec_helper'

describe "presences/new" do
  before(:each) do
    assign(:presence, stub_model(Presence,
      :altar_boy => nil,
      :service_daily => nil,
      :day => 1,
      :week => nil
    ).as_new_record)
  end

  it "renders new presence form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", presences_path, "post" do
      assert_select "input#presence_altar_boy[name=?]", "presence[altar_boy]"
      assert_select "input#presence_service_daily[name=?]", "presence[service_daily]"
      assert_select "input#presence_day[name=?]", "presence[day]"
      assert_select "input#presence_week[name=?]", "presence[week]"
    end
  end
end
