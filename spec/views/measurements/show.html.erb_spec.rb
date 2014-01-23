require 'spec_helper'

describe "measurements/show" do
  before(:each) do
    @measurement = assign(:measurement, stub_model(Measurement,
      :well => nil,
      :pressure => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/9.99/)
  end
end
