require 'spec_helper'

describe "wells/show" do
  before(:each) do
    @well = assign(:well, stub_model(Well,
      :project => nil,
      :longitude => "9.99",
      :latitude => "9.99",
      :name => "Name",
      :description => "MyText",
      :pipe_diameter => 1.5,
      :max_safe_pressure => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
  end
end
