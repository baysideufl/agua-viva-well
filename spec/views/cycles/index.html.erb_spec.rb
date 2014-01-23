require 'spec_helper'

describe "cycles/index" do
  before(:each) do
    assign(:cycles, [
      stub_model(Cycle,
        :well => nil,
        :average_pressure => "9.99",
        :duration_unsafe => 1.5
      ),
      stub_model(Cycle,
        :well => nil,
        :average_pressure => "9.99",
        :duration_unsafe => 1.5
      )
    ])
  end

  it "renders a list of cycles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
