require 'spec_helper'

describe "altar_boys/edit" do
  before(:each) do
    @altar_boy = assign(:altar_boy, stub_model(AltarBoy,
      :name => "MyString"
    ))
  end

  it "renders the edit altar_boy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", altar_boy_path(@altar_boy), "post" do
      assert_select "input#altar_boy_name[name=?]", "altar_boy[name]"
    end
  end
end
