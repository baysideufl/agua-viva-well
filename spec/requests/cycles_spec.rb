require 'spec_helper'

describe "Cycles" do
  describe "GET /cycles" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get cycles_path
      response.status.should be(200)
    end
  end
end
