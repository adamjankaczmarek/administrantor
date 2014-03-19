require 'spec_helper'

describe "tariffs/show" do
  before(:each) do
    @tariff = assign(:tariff, stub_model(Tariff,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
