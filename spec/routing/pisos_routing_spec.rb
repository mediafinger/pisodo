require "spec_helper"

describe PisosController do
  describe "routing" do

    it "routes to #index" do
      get("/pisos").should route_to("pisos#index")
    end

    it "routes to #new" do
      get("/pisos/new").should route_to("pisos#new")
    end

    it "routes to #show" do
      get("/pisos/1").should route_to("pisos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pisos/1/edit").should route_to("pisos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pisos").should route_to("pisos#create")
    end

    it "routes to #update" do
      put("/pisos/1").should route_to("pisos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pisos/1").should route_to("pisos#destroy", :id => "1")
    end

  end
end
