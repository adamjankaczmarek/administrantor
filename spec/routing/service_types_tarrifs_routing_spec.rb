require "spec_helper"

describe ServiceTypesTarrifsController do
  describe "routing" do

    it "routes to #index" do
      get("/service_types_tarrifs").should route_to("service_types_tarrifs#index")
    end

    it "routes to #new" do
      get("/service_types_tarrifs/new").should route_to("service_types_tarrifs#new")
    end

    it "routes to #show" do
      get("/service_types_tarrifs/1").should route_to("service_types_tarrifs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/service_types_tarrifs/1/edit").should route_to("service_types_tarrifs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/service_types_tarrifs").should route_to("service_types_tarrifs#create")
    end

    it "routes to #update" do
      put("/service_types_tarrifs/1").should route_to("service_types_tarrifs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/service_types_tarrifs/1").should route_to("service_types_tarrifs#destroy", :id => "1")
    end

  end
end
