require 'spec_helper'

describe "presences/edit" do
  before(:each) do
    @presence = assign(:presence, stub_model(Presence,
      :altar_boy => nil,
      :celebration => nil
    ))
  end

  it "renders the edit presence form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", presence_path(@presence), "post" do
      assert_select "input#presence_altar_boy[name=?]", "presence[altar_boy]"
      assert_select "input#presence_celebration[name=?]", "presence[celebration]"
    end
  end
end
