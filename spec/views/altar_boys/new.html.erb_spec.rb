require 'spec_helper'

describe "altar_boys/new" do
  before(:each) do
    assign(:altar_boy, stub_model(AltarBoy,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new altar_boy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", altar_boys_path, "post" do
      assert_select "input#altar_boy_name[name=?]", "altar_boy[name]"
    end
  end
end
