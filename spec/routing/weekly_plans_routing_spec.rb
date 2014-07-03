require "spec_helper"

describe WeeklyPlansController do
  describe "routing" do

    it "routes to #index" do
      get("/weekly_plans").should route_to("weekly_plans#index")
    end

    it "routes to #new" do
      get("/weekly_plans/new").should route_to("weekly_plans#new")
    end

    it "routes to #show" do
      get("/weekly_plans/1").should route_to("weekly_plans#show", :id => "1")
    end

    it "routes to #edit" do
      get("/weekly_plans/1/edit").should route_to("weekly_plans#edit", :id => "1")
    end

    it "routes to #create" do
      post("/weekly_plans").should route_to("weekly_plans#create")
    end

    it "routes to #update" do
      put("/weekly_plans/1").should route_to("weekly_plans#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/weekly_plans/1").should route_to("weekly_plans#destroy", :id => "1")
    end

  end
end
