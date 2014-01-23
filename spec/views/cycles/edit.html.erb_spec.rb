require 'spec_helper'

describe "cycles/edit" do
  before(:each) do
    @cycle = assign(:cycle, stub_model(Cycle,
      :well => nil,
      :average_pressure => "9.99",
      :duration_unsafe => 1.5
    ))
  end

  it "renders the edit cycle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cycle_path(@cycle), "post" do
      assert_select "input#cycle_well[name=?]", "cycle[well]"
      assert_select "input#cycle_average_pressure[name=?]", "cycle[average_pressure]"
      assert_select "input#cycle_duration_unsafe[name=?]", "cycle[duration_unsafe]"
    end
  end
end
