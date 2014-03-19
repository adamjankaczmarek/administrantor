require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ServiceWeeklySchemasController do

  # This should return the minimal set of attributes required to create a valid
  # ServiceWeeklySchema. As you add validations to ServiceWeeklySchema, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "sunday" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ServiceWeeklySchemasController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all service_weekly_schemas as @service_weekly_schemas" do
      service_weekly_schema = ServiceWeeklySchema.create! valid_attributes
      get :index, {}, valid_session
      assigns(:service_weekly_schemas).should eq([service_weekly_schema])
    end
  end

  describe "GET show" do
    it "assigns the requested service_weekly_schema as @service_weekly_schema" do
      service_weekly_schema = ServiceWeeklySchema.create! valid_attributes
      get :show, {:id => service_weekly_schema.to_param}, valid_session
      assigns(:service_weekly_schema).should eq(service_weekly_schema)
    end
  end

  describe "GET new" do
    it "assigns a new service_weekly_schema as @service_weekly_schema" do
      get :new, {}, valid_session
      assigns(:service_weekly_schema).should be_a_new(ServiceWeeklySchema)
    end
  end

  describe "GET edit" do
    it "assigns the requested service_weekly_schema as @service_weekly_schema" do
      service_weekly_schema = ServiceWeeklySchema.create! valid_attributes
      get :edit, {:id => service_weekly_schema.to_param}, valid_session
      assigns(:service_weekly_schema).should eq(service_weekly_schema)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ServiceWeeklySchema" do
        expect {
          post :create, {:service_weekly_schema => valid_attributes}, valid_session
        }.to change(ServiceWeeklySchema, :count).by(1)
      end

      it "assigns a newly created service_weekly_schema as @service_weekly_schema" do
        post :create, {:service_weekly_schema => valid_attributes}, valid_session
        assigns(:service_weekly_schema).should be_a(ServiceWeeklySchema)
        assigns(:service_weekly_schema).should be_persisted
      end

      it "redirects to the created service_weekly_schema" do
        post :create, {:service_weekly_schema => valid_attributes}, valid_session
        response.should redirect_to(ServiceWeeklySchema.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved service_weekly_schema as @service_weekly_schema" do
        # Trigger the behavior that occurs when invalid params are submitted
        ServiceWeeklySchema.any_instance.stub(:save).and_return(false)
        post :create, {:service_weekly_schema => { "sunday" => "invalid value" }}, valid_session
        assigns(:service_weekly_schema).should be_a_new(ServiceWeeklySchema)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ServiceWeeklySchema.any_instance.stub(:save).and_return(false)
        post :create, {:service_weekly_schema => { "sunday" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested service_weekly_schema" do
        service_weekly_schema = ServiceWeeklySchema.create! valid_attributes
        # Assuming there are no other service_weekly_schemas in the database, this
        # specifies that the ServiceWeeklySchema created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ServiceWeeklySchema.any_instance.should_receive(:update).with({ "sunday" => "" })
        put :update, {:id => service_weekly_schema.to_param, :service_weekly_schema => { "sunday" => "" }}, valid_session
      end

      it "assigns the requested service_weekly_schema as @service_weekly_schema" do
        service_weekly_schema = ServiceWeeklySchema.create! valid_attributes
        put :update, {:id => service_weekly_schema.to_param, :service_weekly_schema => valid_attributes}, valid_session
        assigns(:service_weekly_schema).should eq(service_weekly_schema)
      end

      it "redirects to the service_weekly_schema" do
        service_weekly_schema = ServiceWeeklySchema.create! valid_attributes
        put :update, {:id => service_weekly_schema.to_param, :service_weekly_schema => valid_attributes}, valid_session
        response.should redirect_to(service_weekly_schema)
      end
    end

    describe "with invalid params" do
      it "assigns the service_weekly_schema as @service_weekly_schema" do
        service_weekly_schema = ServiceWeeklySchema.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ServiceWeeklySchema.any_instance.stub(:save).and_return(false)
        put :update, {:id => service_weekly_schema.to_param, :service_weekly_schema => { "sunday" => "invalid value" }}, valid_session
        assigns(:service_weekly_schema).should eq(service_weekly_schema)
      end

      it "re-renders the 'edit' template" do
        service_weekly_schema = ServiceWeeklySchema.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ServiceWeeklySchema.any_instance.stub(:save).and_return(false)
        put :update, {:id => service_weekly_schema.to_param, :service_weekly_schema => { "sunday" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested service_weekly_schema" do
      service_weekly_schema = ServiceWeeklySchema.create! valid_attributes
      expect {
        delete :destroy, {:id => service_weekly_schema.to_param}, valid_session
      }.to change(ServiceWeeklySchema, :count).by(-1)
    end

    it "redirects to the service_weekly_schemas list" do
      service_weekly_schema = ServiceWeeklySchema.create! valid_attributes
      delete :destroy, {:id => service_weekly_schema.to_param}, valid_session
      response.should redirect_to(service_weekly_schemas_url)
    end
  end

end
