require "spec_helper"

describe CyclesController do
  describe "routing" do

    it "routes to #index" do
      get("/cycles").should route_to("cycles#index")
    end

    it "routes to #new" do
      get("/cycles/new").should route_to("cycles#new")
    end

    it "routes to #show" do
      get("/cycles/1").should route_to("cycles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cycles/1/edit").should route_to("cycles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cycles").should route_to("cycles#create")
    end

    it "routes to #update" do
      put("/cycles/1").should route_to("cycles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cycles/1").should route_to("cycles#destroy", :id => "1")
    end

  end
end
