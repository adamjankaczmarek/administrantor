require 'spec_helper'

describe "celebration_dailies/edit" do
  before(:each) do
    @celebration_daily = assign(:celebration_daily, stub_model(CelebrationDaily,
      :name => "MyString",
      :hour => 1,
      :celebration_type => nil
    ))
  end

  it "renders the edit celebration_daily form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", celebration_daily_path(@celebration_daily), "post" do
      assert_select "input#celebration_daily_name[name=?]", "celebration_daily[name]"
      assert_select "input#celebration_daily_hour[name=?]", "celebration_daily[hour]"
      assert_select "input#celebration_daily_celebration_type[name=?]", "celebration_daily[celebration_type]"
    end
  end
end
