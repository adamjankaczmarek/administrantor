require "spec_helper"

describe TariffEntriesController do
  describe "routing" do

    it "routes to #index" do
      get("/tariff_entries").should route_to("tariff_entries#index")
    end

    it "routes to #new" do
      get("/tariff_entries/new").should route_to("tariff_entries#new")
    end

    it "routes to #show" do
      get("/tariff_entries/1").should route_to("tariff_entries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tariff_entries/1/edit").should route_to("tariff_entries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tariff_entries").should route_to("tariff_entries#create")
    end

    it "routes to #update" do
      put("/tariff_entries/1").should route_to("tariff_entries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tariff_entries/1").should route_to("tariff_entries#destroy", :id => "1")
    end

  end
end
