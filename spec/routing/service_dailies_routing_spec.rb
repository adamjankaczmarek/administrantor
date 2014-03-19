require "spec_helper"

describe ServiceDailiesController do
  describe "routing" do

    it "routes to #index" do
      get("/service_dailies").should route_to("service_dailies#index")
    end

    it "routes to #new" do
      get("/service_dailies/new").should route_to("service_dailies#new")
    end

    it "routes to #show" do
      get("/service_dailies/1").should route_to("service_dailies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/service_dailies/1/edit").should route_to("service_dailies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/service_dailies").should route_to("service_dailies#create")
    end

    it "routes to #update" do
      put("/service_dailies/1").should route_to("service_dailies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/service_dailies/1").should route_to("service_dailies#destroy", :id => "1")
    end

  end
end
