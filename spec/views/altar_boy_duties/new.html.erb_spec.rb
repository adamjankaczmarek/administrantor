require 'spec_helper'

describe "altar_boy_duties/new" do
  before(:each) do
    assign(:altar_boy_duty, stub_model(AltarBoyDuty,
      :altar_boy => nil,
      :duty => nil
    ).as_new_record)
  end

  it "renders new altar_boy_duty form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", altar_boy_duties_path, "post" do
      assert_select "input#altar_boy_duty_altar_boy[name=?]", "altar_boy_duty[altar_boy]"
      assert_select "input#altar_boy_duty_duty[name=?]", "altar_boy_duty[duty]"
    end
  end
end
