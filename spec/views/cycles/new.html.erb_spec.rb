require 'spec_helper'

describe "cycles/new" do
  before(:each) do
    assign(:cycle, stub_model(Cycle,
      :well => nil,
      :average_pressure => "9.99",
      :duration_unsafe => 1.5
    ).as_new_record)
  end

  it "renders new cycle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cycles_path, "post" do
      assert_select "input#cycle_well[name=?]", "cycle[well]"
      assert_select "input#cycle_average_pressure[name=?]", "cycle[average_pressure]"
      assert_select "input#cycle_duration_unsafe[name=?]", "cycle[duration_unsafe]"
    end
  end
end
