require "spec_helper"

describe AltarBoyDutiesController do
  describe "routing" do

    it "routes to #index" do
      get("/altar_boy_duties").should route_to("altar_boy_duties#index")
    end

    it "routes to #new" do
      get("/altar_boy_duties/new").should route_to("altar_boy_duties#new")
    end

    it "routes to #show" do
      get("/altar_boy_duties/1").should route_to("altar_boy_duties#show", :id => "1")
    end

    it "routes to #edit" do
      get("/altar_boy_duties/1/edit").should route_to("altar_boy_duties#edit", :id => "1")
    end

    it "routes to #create" do
      post("/altar_boy_duties").should route_to("altar_boy_duties#create")
    end

    it "routes to #update" do
      put("/altar_boy_duties/1").should route_to("altar_boy_duties#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/altar_boy_duties/1").should route_to("altar_boy_duties#destroy", :id => "1")
    end

  end
end
