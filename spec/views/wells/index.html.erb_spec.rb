require 'spec_helper'

describe "wells/index" do
  before(:each) do
    assign(:wells, [
      stub_model(Well,
        :project => nil,
        :longitude => "9.99",
        :latitude => "9.99",
        :name => "Name",
        :description => "MyText",
        :pipe_diameter => 1.5,
        :max_safe_pressure => 1.5
      ),
      stub_model(Well,
        :project => nil,
        :longitude => "9.99",
        :latitude => "9.99",
        :name => "Name",
        :description => "MyText",
        :pipe_diameter => 1.5,
        :max_safe_pressure => 1.5
      )
    ])
  end

  it "renders a list of wells" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
