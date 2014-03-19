require "spec_helper"

describe DutyDailiesController do
  describe "routing" do

    it "routes to #index" do
      get("/duty_dailies").should route_to("duty_dailies#index")
    end

    it "routes to #new" do
      get("/duty_dailies/new").should route_to("duty_dailies#new")
    end

    it "routes to #show" do
      get("/duty_dailies/1").should route_to("duty_dailies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/duty_dailies/1/edit").should route_to("duty_dailies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/duty_dailies").should route_to("duty_dailies#create")
    end

    it "routes to #update" do
      put("/duty_dailies/1").should route_to("duty_dailies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/duty_dailies/1").should route_to("duty_dailies#destroy", :id => "1")
    end

  end
end
