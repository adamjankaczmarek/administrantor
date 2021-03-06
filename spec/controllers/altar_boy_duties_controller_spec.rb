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

describe AltarBoyDutiesController do

  # This should return the minimal set of attributes required to create a valid
  # AltarBoyDuty. As you add validations to AltarBoyDuty, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "altar_boy" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AltarBoyDutiesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all altar_boy_duties as @altar_boy_duties" do
      altar_boy_duty = AltarBoyDuty.create! valid_attributes
      get :index, {}, valid_session
      assigns(:altar_boy_duties).should eq([altar_boy_duty])
    end
  end

  describe "GET show" do
    it "assigns the requested altar_boy_duty as @altar_boy_duty" do
      altar_boy_duty = AltarBoyDuty.create! valid_attributes
      get :show, {:id => altar_boy_duty.to_param}, valid_session
      assigns(:altar_boy_duty).should eq(altar_boy_duty)
    end
  end

  describe "GET new" do
    it "assigns a new altar_boy_duty as @altar_boy_duty" do
      get :new, {}, valid_session
      assigns(:altar_boy_duty).should be_a_new(AltarBoyDuty)
    end
  end

  describe "GET edit" do
    it "assigns the requested altar_boy_duty as @altar_boy_duty" do
      altar_boy_duty = AltarBoyDuty.create! valid_attributes
      get :edit, {:id => altar_boy_duty.to_param}, valid_session
      assigns(:altar_boy_duty).should eq(altar_boy_duty)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new AltarBoyDuty" do
        expect {
          post :create, {:altar_boy_duty => valid_attributes}, valid_session
        }.to change(AltarBoyDuty, :count).by(1)
      end

      it "assigns a newly created altar_boy_duty as @altar_boy_duty" do
        post :create, {:altar_boy_duty => valid_attributes}, valid_session
        assigns(:altar_boy_duty).should be_a(AltarBoyDuty)
        assigns(:altar_boy_duty).should be_persisted
      end

      it "redirects to the created altar_boy_duty" do
        post :create, {:altar_boy_duty => valid_attributes}, valid_session
        response.should redirect_to(AltarBoyDuty.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved altar_boy_duty as @altar_boy_duty" do
        # Trigger the behavior that occurs when invalid params are submitted
        AltarBoyDuty.any_instance.stub(:save).and_return(false)
        post :create, {:altar_boy_duty => { "altar_boy" => "invalid value" }}, valid_session
        assigns(:altar_boy_duty).should be_a_new(AltarBoyDuty)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        AltarBoyDuty.any_instance.stub(:save).and_return(false)
        post :create, {:altar_boy_duty => { "altar_boy" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested altar_boy_duty" do
        altar_boy_duty = AltarBoyDuty.create! valid_attributes
        # Assuming there are no other altar_boy_duties in the database, this
        # specifies that the AltarBoyDuty created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        AltarBoyDuty.any_instance.should_receive(:update).with({ "altar_boy" => "" })
        put :update, {:id => altar_boy_duty.to_param, :altar_boy_duty => { "altar_boy" => "" }}, valid_session
      end

      it "assigns the requested altar_boy_duty as @altar_boy_duty" do
        altar_boy_duty = AltarBoyDuty.create! valid_attributes
        put :update, {:id => altar_boy_duty.to_param, :altar_boy_duty => valid_attributes}, valid_session
        assigns(:altar_boy_duty).should eq(altar_boy_duty)
      end

      it "redirects to the altar_boy_duty" do
        altar_boy_duty = AltarBoyDuty.create! valid_attributes
        put :update, {:id => altar_boy_duty.to_param, :altar_boy_duty => valid_attributes}, valid_session
        response.should redirect_to(altar_boy_duty)
      end
    end

    describe "with invalid params" do
      it "assigns the altar_boy_duty as @altar_boy_duty" do
        altar_boy_duty = AltarBoyDuty.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AltarBoyDuty.any_instance.stub(:save).and_return(false)
        put :update, {:id => altar_boy_duty.to_param, :altar_boy_duty => { "altar_boy" => "invalid value" }}, valid_session
        assigns(:altar_boy_duty).should eq(altar_boy_duty)
      end

      it "re-renders the 'edit' template" do
        altar_boy_duty = AltarBoyDuty.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AltarBoyDuty.any_instance.stub(:save).and_return(false)
        put :update, {:id => altar_boy_duty.to_param, :altar_boy_duty => { "altar_boy" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested altar_boy_duty" do
      altar_boy_duty = AltarBoyDuty.create! valid_attributes
      expect {
        delete :destroy, {:id => altar_boy_duty.to_param}, valid_session
      }.to change(AltarBoyDuty, :count).by(-1)
    end

    it "redirects to the altar_boy_duties list" do
      altar_boy_duty = AltarBoyDuty.create! valid_attributes
      delete :destroy, {:id => altar_boy_duty.to_param}, valid_session
      response.should redirect_to(altar_boy_duties_url)
    end
  end

end
