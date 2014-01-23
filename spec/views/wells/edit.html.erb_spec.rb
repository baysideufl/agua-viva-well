require 'spec_helper'

describe "wells/edit" do
  before(:each) do
    @well = assign(:well, stub_model(Well,
      :project => nil,
      :longitude => "9.99",
      :latitude => "9.99",
      :name => "MyString",
      :description => "MyText",
      :pipe_diameter => 1.5,
      :max_safe_pressure => 1.5
    ))
  end

  it "renders the edit well form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", well_path(@well), "post" do
      assert_select "input#well_project[name=?]", "well[project]"
      assert_select "input#well_longitude[name=?]", "well[longitude]"
      assert_select "input#well_latitude[name=?]", "well[latitude]"
      assert_select "input#well_name[name=?]", "well[name]"
      assert_select "textarea#well_description[name=?]", "well[description]"
      assert_select "input#well_pipe_diameter[name=?]", "well[pipe_diameter]"
      assert_select "input#well_max_safe_pressure[name=?]", "well[max_safe_pressure]"
    end
  end
end
