require 'spec_helper'

describe "presences/edit" do
  before(:each) do
    @presence = assign(:presence, stub_model(Presence,
      :altar_boy => nil,
      :service_daily => nil,
      :day => 1,
      :week => nil
    ))
  end

  it "renders the edit presence form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", presence_path(@presence), "post" do
      assert_select "input#presence_altar_boy[name=?]", "presence[altar_boy]"
      assert_select "input#presence_service_daily[name=?]", "presence[service_daily]"
      assert_select "input#presence_day[name=?]", "presence[day]"
      assert_select "input#presence_week[name=?]", "presence[week]"
    end
  end
end
