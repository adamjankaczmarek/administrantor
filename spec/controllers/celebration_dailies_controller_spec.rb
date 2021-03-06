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

describe CelebrationDailiesController do

  # This should return the minimal set of attributes required to create a valid
  # CelebrationDaily. As you add validations to CelebrationDaily, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CelebrationDailiesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all celebration_dailies as @celebration_dailies" do
      celebration_daily = CelebrationDaily.create! valid_attributes
      get :index, {}, valid_session
      assigns(:celebration_dailies).should eq([celebration_daily])
    end
  end

  describe "GET show" do
    it "assigns the requested celebration_daily as @celebration_daily" do
      celebration_daily = CelebrationDaily.create! valid_attributes
      get :show, {:id => celebration_daily.to_param}, valid_session
      assigns(:celebration_daily).should eq(celebration_daily)
    end
  end

  describe "GET new" do
    it "assigns a new celebration_daily as @celebration_daily" do
      get :new, {}, valid_session
      assigns(:celebration_daily).should be_a_new(CelebrationDaily)
    end
  end

  describe "GET edit" do
    it "assigns the requested celebration_daily as @celebration_daily" do
      celebration_daily = CelebrationDaily.create! valid_attributes
      get :edit, {:id => celebration_daily.to_param}, valid_session
      assigns(:celebration_daily).should eq(celebration_daily)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CelebrationDaily" do
        expect {
          post :create, {:celebration_daily => valid_attributes}, valid_session
        }.to change(CelebrationDaily, :count).by(1)
      end

      it "assigns a newly created celebration_daily as @celebration_daily" do
        post :create, {:celebration_daily => valid_attributes}, valid_session
        assigns(:celebration_daily).should be_a(CelebrationDaily)
        assigns(:celebration_daily).should be_persisted
      end

      it "redirects to the created celebration_daily" do
        post :create, {:celebration_daily => valid_attributes}, valid_session
        response.should redirect_to(CelebrationDaily.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved celebration_daily as @celebration_daily" do
        # Trigger the behavior that occurs when invalid params are submitted
        CelebrationDaily.any_instance.stub(:save).and_return(false)
        post :create, {:celebration_daily => { "name" => "invalid value" }}, valid_session
        assigns(:celebration_daily).should be_a_new(CelebrationDaily)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        CelebrationDaily.any_instance.stub(:save).and_return(false)
        post :create, {:celebration_daily => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested celebration_daily" do
        celebration_daily = CelebrationDaily.create! valid_attributes
        # Assuming there are no other celebration_dailies in the database, this
        # specifies that the CelebrationDaily created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        CelebrationDaily.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => celebration_daily.to_param, :celebration_daily => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested celebration_daily as @celebration_daily" do
        celebration_daily = CelebrationDaily.create! valid_attributes
        put :update, {:id => celebration_daily.to_param, :celebration_daily => valid_attributes}, valid_session
        assigns(:celebration_daily).should eq(celebration_daily)
      end

      it "redirects to the celebration_daily" do
        celebration_daily = CelebrationDaily.create! valid_attributes
        put :update, {:id => celebration_daily.to_param, :celebration_daily => valid_attributes}, valid_session
        response.should redirect_to(celebration_daily)
      end
    end

    describe "with invalid params" do
      it "assigns the celebration_daily as @celebration_daily" do
        celebration_daily = CelebrationDaily.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CelebrationDaily.any_instance.stub(:save).and_return(false)
        put :update, {:id => celebration_daily.to_param, :celebration_daily => { "name" => "invalid value" }}, valid_session
        assigns(:celebration_daily).should eq(celebration_daily)
      end

      it "re-renders the 'edit' template" do
        celebration_daily = CelebrationDaily.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CelebrationDaily.any_instance.stub(:save).and_return(false)
        put :update, {:id => celebration_daily.to_param, :celebration_daily => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested celebration_daily" do
      celebration_daily = CelebrationDaily.create! valid_attributes
      expect {
        delete :destroy, {:id => celebration_daily.to_param}, valid_session
      }.to change(CelebrationDaily, :count).by(-1)
    end

    it "redirects to the celebration_dailies list" do
      celebration_daily = CelebrationDaily.create! valid_attributes
      delete :destroy, {:id => celebration_daily.to_param}, valid_session
      response.should redirect_to(celebration_dailies_url)
    end
  end

end
