require "spec_helper"

describe ServiceDailySchemasController do
  describe "routing" do

    it "routes to #index" do
      get("/service_daily_schemas").should route_to("service_daily_schemas#index")
    end

    it "routes to #new" do
      get("/service_daily_schemas/new").should route_to("service_daily_schemas#new")
    end

    it "routes to #show" do
      get("/service_daily_schemas/1").should route_to("service_daily_schemas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/service_daily_schemas/1/edit").should route_to("service_daily_schemas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/service_daily_schemas").should route_to("service_daily_schemas#create")
    end

    it "routes to #update" do
      put("/service_daily_schemas/1").should route_to("service_daily_schemas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/service_daily_schemas/1").should route_to("service_daily_schemas#destroy", :id => "1")
    end

  end
end
