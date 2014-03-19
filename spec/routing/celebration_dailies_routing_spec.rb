require "spec_helper"

describe CelebrationDailiesController do
  describe "routing" do

    it "routes to #index" do
      get("/celebration_dailies").should route_to("celebration_dailies#index")
    end

    it "routes to #new" do
      get("/celebration_dailies/new").should route_to("celebration_dailies#new")
    end

    it "routes to #show" do
      get("/celebration_dailies/1").should route_to("celebration_dailies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/celebration_dailies/1/edit").should route_to("celebration_dailies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/celebration_dailies").should route_to("celebration_dailies#create")
    end

    it "routes to #update" do
      put("/celebration_dailies/1").should route_to("celebration_dailies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/celebration_dailies/1").should route_to("celebration_dailies#destroy", :id => "1")
    end

  end
end
