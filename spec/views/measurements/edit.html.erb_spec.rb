require 'spec_helper'

describe "measurements/edit" do
  before(:each) do
    @measurement = assign(:measurement, stub_model(Measurement,
      :well => nil,
      :pressure => "9.99"
    ))
  end

  it "renders the edit measurement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", measurement_path(@measurement), "post" do
      assert_select "input#measurement_well[name=?]", "measurement[well]"
      assert_select "input#measurement_pressure[name=?]", "measurement[pressure]"
    end
  end
end
