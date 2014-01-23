require 'spec_helper'

describe "cycles/show" do
  before(:each) do
    @cycle = assign(:cycle, stub_model(Cycle,
      :well => nil,
      :average_pressure => "9.99",
      :duration_unsafe => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/9.99/)
    rendered.should match(/1.5/)
  end
end
