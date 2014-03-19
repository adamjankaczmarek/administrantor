require "spec_helper"

describe CelebrationTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/celebration_types").should route_to("celebration_types#index")
    end

    it "routes to #new" do
      get("/celebration_types/new").should route_to("celebration_types#new")
    end

    it "routes to #show" do
      get("/celebration_types/1").should route_to("celebration_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/celebration_types/1/edit").should route_to("celebration_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/celebration_types").should route_to("celebration_types#create")
    end

    it "routes to #update" do
      put("/celebration_types/1").should route_to("celebration_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/celebration_types/1").should route_to("celebration_types#destroy", :id => "1")
    end

  end
end
