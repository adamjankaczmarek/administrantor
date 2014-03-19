require 'spec_helper'

describe "tariffs/new" do
  before(:each) do
    assign(:tariff, stub_model(Tariff,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new tariff form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tariffs_path, "post" do
      assert_select "input#tariff_name[name=?]", "tariff[name]"
    end
  end
end
