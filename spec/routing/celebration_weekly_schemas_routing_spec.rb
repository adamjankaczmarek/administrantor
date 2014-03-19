require "spec_helper"

describe CelebrationWeeklySchemasController do
  describe "routing" do

    it "routes to #index" do
      get("/celebration_weekly_schemas").should route_to("celebration_weekly_schemas#index")
    end

    it "routes to #new" do
      get("/celebration_weekly_schemas/new").should route_to("celebration_weekly_schemas#new")
    end

    it "routes to #show" do
      get("/celebration_weekly_schemas/1").should route_to("celebration_weekly_schemas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/celebration_weekly_schemas/1/edit").should route_to("celebration_weekly_schemas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/celebration_weekly_schemas").should route_to("celebration_weekly_schemas#create")
    end

    it "routes to #update" do
      put("/celebration_weekly_schemas/1").should route_to("celebration_weekly_schemas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/celebration_weekly_schemas/1").should route_to("celebration_weekly_schemas#destroy", :id => "1")
    end

  end
end
