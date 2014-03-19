require 'spec_helper'

describe "tariffs/edit" do
  before(:each) do
    @tariff = assign(:tariff, stub_model(Tariff,
      :name => "MyString"
    ))
  end

  it "renders the edit tariff form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tariff_path(@tariff), "post" do
      assert_select "input#tariff_name[name=?]", "tariff[name]"
    end
  end
end
