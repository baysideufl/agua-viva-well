require 'spec_helper'

describe "measurements/new" do
  before(:each) do
    assign(:measurement, stub_model(Measurement,
      :well => nil,
      :pressure => "9.99"
    ).as_new_record)
  end

  it "renders new measurement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", measurements_path, "post" do
      assert_select "input#measurement_well[name=?]", "measurement[well]"
      assert_select "input#measurement_pressure[name=?]", "measurement[pressure]"
    end
  end
end
