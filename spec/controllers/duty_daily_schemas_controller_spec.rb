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

describe DutyDailySchemasController do

  # This should return the minimal set of attributes required to create a valid
  # DutyDailySchema. As you add validations to DutyDailySchema, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DutyDailySchemasController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all duty_daily_schemas as @duty_daily_schemas" do
      duty_daily_schema = DutyDailySchema.create! valid_attributes
      get :index, {}, valid_session
      assigns(:duty_daily_schemas).should eq([duty_daily_schema])
    end
  end

  describe "GET show" do
    it "assigns the requested duty_daily_schema as @duty_daily_schema" do
      duty_daily_schema = DutyDailySchema.create! valid_attributes
      get :show, {:id => duty_daily_schema.to_param}, valid_session
      assigns(:duty_daily_schema).should eq(duty_daily_schema)
    end
  end

  describe "GET new" do
    it "assigns a new duty_daily_schema as @duty_daily_schema" do
      get :new, {}, valid_session
      assigns(:duty_daily_schema).should be_a_new(DutyDailySchema)
    end
  end

  describe "GET edit" do
    it "assigns the requested duty_daily_schema as @duty_daily_schema" do
      duty_daily_schema = DutyDailySchema.create! valid_attributes
      get :edit, {:id => duty_daily_schema.to_param}, valid_session
      assigns(:duty_daily_schema).should eq(duty_daily_schema)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new DutyDailySchema" do
        expect {
          post :create, {:duty_daily_schema => valid_attributes}, valid_session
        }.to change(DutyDailySchema, :count).by(1)
      end

      it "assigns a newly created duty_daily_schema as @duty_daily_schema" do
        post :create, {:duty_daily_schema => valid_attributes}, valid_session
        assigns(:duty_daily_schema).should be_a(DutyDailySchema)
        assigns(:duty_daily_schema).should be_persisted
      end

      it "redirects to the created duty_daily_schema" do
        post :create, {:duty_daily_schema => valid_attributes}, valid_session
        response.should redirect_to(DutyDailySchema.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved duty_daily_schema as @duty_daily_schema" do
        # Trigger the behavior that occurs when invalid params are submitted
        DutyDailySchema.any_instance.stub(:save).and_return(false)
        post :create, {:duty_daily_schema => { "name" => "invalid value" }}, valid_session
        assigns(:duty_daily_schema).should be_a_new(DutyDailySchema)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        DutyDailySchema.any_instance.stub(:save).and_return(false)
        post :create, {:duty_daily_schema => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested duty_daily_schema" do
        duty_daily_schema = DutyDailySchema.create! valid_attributes
        # Assuming there are no other duty_daily_schemas in the database, this
        # specifies that the DutyDailySchema created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        DutyDailySchema.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => duty_daily_schema.to_param, :duty_daily_schema => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested duty_daily_schema as @duty_daily_schema" do
        duty_daily_schema = DutyDailySchema.create! valid_attributes
        put :update, {:id => duty_daily_schema.to_param, :duty_daily_schema => valid_attributes}, valid_session
        assigns(:duty_daily_schema).should eq(duty_daily_schema)
      end

      it "redirects to the duty_daily_schema" do
        duty_daily_schema = DutyDailySchema.create! valid_attributes
        put :update, {:id => duty_daily_schema.to_param, :duty_daily_schema => valid_attributes}, valid_session
        response.should redirect_to(duty_daily_schema)
      end
    end

    describe "with invalid params" do
      it "assigns the duty_daily_schema as @duty_daily_schema" do
        duty_daily_schema = DutyDailySchema.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DutyDailySchema.any_instance.stub(:save).and_return(false)
        put :update, {:id => duty_daily_schema.to_param, :duty_daily_schema => { "name" => "invalid value" }}, valid_session
        assigns(:duty_daily_schema).should eq(duty_daily_schema)
      end

      it "re-renders the 'edit' template" do
        duty_daily_schema = DutyDailySchema.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DutyDailySchema.any_instance.stub(:save).and_return(false)
        put :update, {:id => duty_daily_schema.to_param, :duty_daily_schema => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested duty_daily_schema" do
      duty_daily_schema = DutyDailySchema.create! valid_attributes
      expect {
        delete :destroy, {:id => duty_daily_schema.to_param}, valid_session
      }.to change(DutyDailySchema, :count).by(-1)
    end

    it "redirects to the duty_daily_schemas list" do
      duty_daily_schema = DutyDailySchema.create! valid_attributes
      delete :destroy, {:id => duty_daily_schema.to_param}, valid_session
      response.should redirect_to(duty_daily_schemas_url)
    end
  end

end