require 'spec_helper'

describe "celebration_types/edit" do
  before(:each) do
    @celebration_type = assign(:celebration_type, stub_model(CelebrationType,
      :name => "MyString"
    ))
  end

  it "renders the edit celebration_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", celebration_type_path(@celebration_type), "post" do
      assert_select "input#celebration_type_name[name=?]", "celebration_type[name]"
    end
  end
end
