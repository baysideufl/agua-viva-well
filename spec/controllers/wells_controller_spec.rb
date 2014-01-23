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

describe WellsController do

  # This should return the minimal set of attributes required to create a valid
  # Well. As you add validations to Well, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "project" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # WellsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all wells as @wells" do
      well = Well.create! valid_attributes
      get :index, {}, valid_session
      assigns(:wells).should eq([well])
    end
  end

  describe "GET show" do
    it "assigns the requested well as @well" do
      well = Well.create! valid_attributes
      get :show, {:id => well.to_param}, valid_session
      assigns(:well).should eq(well)
    end
  end

  describe "GET new" do
    it "assigns a new well as @well" do
      get :new, {}, valid_session
      assigns(:well).should be_a_new(Well)
    end
  end

  describe "GET edit" do
    it "assigns the requested well as @well" do
      well = Well.create! valid_attributes
      get :edit, {:id => well.to_param}, valid_session
      assigns(:well).should eq(well)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Well" do
        expect {
          post :create, {:well => valid_attributes}, valid_session
        }.to change(Well, :count).by(1)
      end

      it "assigns a newly created well as @well" do
        post :create, {:well => valid_attributes}, valid_session
        assigns(:well).should be_a(Well)
        assigns(:well).should be_persisted
      end

      it "redirects to the created well" do
        post :create, {:well => valid_attributes}, valid_session
        response.should redirect_to(Well.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved well as @well" do
        # Trigger the behavior that occurs when invalid params are submitted
        Well.any_instance.stub(:save).and_return(false)
        post :create, {:well => { "project" => "invalid value" }}, valid_session
        assigns(:well).should be_a_new(Well)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Well.any_instance.stub(:save).and_return(false)
        post :create, {:well => { "project" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested well" do
        well = Well.create! valid_attributes
        # Assuming there are no other wells in the database, this
        # specifies that the Well created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Well.any_instance.should_receive(:update).with({ "project" => "" })
        put :update, {:id => well.to_param, :well => { "project" => "" }}, valid_session
      end

      it "assigns the requested well as @well" do
        well = Well.create! valid_attributes
        put :update, {:id => well.to_param, :well => valid_attributes}, valid_session
        assigns(:well).should eq(well)
      end

      it "redirects to the well" do
        well = Well.create! valid_attributes
        put :update, {:id => well.to_param, :well => valid_attributes}, valid_session
        response.should redirect_to(well)
      end
    end

    describe "with invalid params" do
      it "assigns the well as @well" do
        well = Well.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Well.any_instance.stub(:save).and_return(false)
        put :update, {:id => well.to_param, :well => { "project" => "invalid value" }}, valid_session
        assigns(:well).should eq(well)
      end

      it "re-renders the 'edit' template" do
        well = Well.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Well.any_instance.stub(:save).and_return(false)
        put :update, {:id => well.to_param, :well => { "project" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested well" do
      well = Well.create! valid_attributes
      expect {
        delete :destroy, {:id => well.to_param}, valid_session
      }.to change(Well, :count).by(-1)
    end

    it "redirects to the wells list" do
      well = Well.create! valid_attributes
      delete :destroy, {:id => well.to_param}, valid_session
      response.should redirect_to(wells_url)
    end
  end

end