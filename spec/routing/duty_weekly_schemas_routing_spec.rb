require "spec_helper"

describe DutyWeeklySchemasController do
  describe "routing" do

    it "routes to #index" do
      get("/duty_weekly_schemas").should route_to("duty_weekly_schemas#index")
    end

    it "routes to #new" do
      get("/duty_weekly_schemas/new").should route_to("duty_weekly_schemas#new")
    end

    it "routes to #show" do
      get("/duty_weekly_schemas/1").should route_to("duty_weekly_schemas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/duty_weekly_schemas/1/edit").should route_to("duty_weekly_schemas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/duty_weekly_schemas").should route_to("duty_weekly_schemas#create")
    end

    it "routes to #update" do
      put("/duty_weekly_schemas/1").should route_to("duty_weekly_schemas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/duty_weekly_schemas/1").should route_to("duty_weekly_schemas#destroy", :id => "1")
    end

  end
end
