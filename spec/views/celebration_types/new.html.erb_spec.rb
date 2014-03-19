require 'spec_helper'

describe "celebration_types/new" do
  before(:each) do
    assign(:celebration_type, stub_model(CelebrationType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new celebration_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", celebration_types_path, "post" do
      assert_select "input#celebration_type_name[name=?]", "celebration_type[name]"
    end
  end
end
