require 'spec_helper'

describe "measurements/index" do
  before(:each) do
    assign(:measurements, [
      stub_model(Measurement,
        :well => nil,
        :pressure => "9.99"
      ),
      stub_model(Measurement,
        :well => nil,
        :pressure => "9.99"
      )
    ])
  end

  it "renders a list of measurements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
