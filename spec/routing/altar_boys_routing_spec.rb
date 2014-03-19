require "spec_helper"

describe AltarBoysController do
  describe "routing" do

    it "routes to #index" do
      get("/altar_boys").should route_to("altar_boys#index")
    end

    it "routes to #new" do
      get("/altar_boys/new").should route_to("altar_boys#new")
    end

    it "routes to #show" do
      get("/altar_boys/1").should route_to("altar_boys#show", :id => "1")
    end

    it "routes to #edit" do
      get("/altar_boys/1/edit").should route_to("altar_boys#edit", :id => "1")
    end

    it "routes to #create" do
      post("/altar_boys").should route_to("altar_boys#create")
    end

    it "routes to #update" do
      put("/altar_boys/1").should route_to("altar_boys#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/altar_boys/1").should route_to("altar_boys#destroy", :id => "1")
    end

  end
end
