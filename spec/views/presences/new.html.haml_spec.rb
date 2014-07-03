require 'spec_helper'

describe "presences/new" do
  before(:each) do
    assign(:presence, stub_model(Presence,
      :altar_boy => nil,
      :celebration => nil
    ).as_new_record)
  end

  it "renders new presence form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", presences_path, "post" do
      assert_select "input#presence_altar_boy[name=?]", "presence[altar_boy]"
      assert_select "input#presence_celebration[name=?]", "presence[celebration]"
    end
  end
end
