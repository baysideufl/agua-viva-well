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

describe MeasurementsController do

  # This should return the minimal set of attributes required to create a valid
  # Measurement. As you add validations to Measurement, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "well" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MeasurementsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all measurements as @measurements" do
      measurement = Measurement.create! valid_attributes
      get :index, {}, valid_session
      assigns(:measurements).should eq([measurement])
    end
  end

  describe "GET show" do
    it "assigns the requested measurement as @measurement" do
      measurement = Measurement.create! valid_attributes
      get :show, {:id => measurement.to_param}, valid_session
      assigns(:measurement).should eq(measurement)
    end
  end

  describe "GET new" do
    it "assigns a new measurement as @measurement" do
      get :new, {}, valid_session
      assigns(:measurement).should be_a_new(Measurement)
    end
  end

  describe "GET edit" do
    it "assigns the requested measurement as @measurement" do
      measurement = Measurement.create! valid_attributes
      get :edit, {:id => measurement.to_param}, valid_session
      assigns(:measurement).should eq(measurement)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Measurement" do
        expect {
          post :create, {:measurement => valid_attributes}, valid_session
        }.to change(Measurement, :count).by(1)
      end

      it "assigns a newly created measurement as @measurement" do
        post :create, {:measurement => valid_attributes}, valid_session
        assigns(:measurement).should be_a(Measurement)
        assigns(:measurement).should be_persisted
      end

      it "redirects to the created measurement" do
        post :create, {:measurement => valid_attributes}, valid_session
        response.should redirect_to(Measurement.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved measurement as @measurement" do
        # Trigger the behavior that occurs when invalid params are submitted
        Measurement.any_instance.stub(:save).and_return(false)
        post :create, {:measurement => { "well" => "invalid value" }}, valid_session
        assigns(:measurement).should be_a_new(Measurement)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Measurement.any_instance.stub(:save).and_return(false)
        post :create, {:measurement => { "well" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested measurement" do
        measurement = Measurement.create! valid_attributes
        # Assuming there are no other measurements in the database, this
        # specifies that the Measurement created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Measurement.any_instance.should_receive(:update).with({ "well" => "" })
        put :update, {:id => measurement.to_param, :measurement => { "well" => "" }}, valid_session
      end

      it "assigns the requested measurement as @measurement" do
        measurement = Measurement.create! valid_attributes
        put :update, {:id => measurement.to_param, :measurement => valid_attributes}, valid_session
        assigns(:measurement).should eq(measurement)
      end

      it "redirects to the measurement" do
        measurement = Measurement.create! valid_attributes
        put :update, {:id => measurement.to_param, :measurement => valid_attributes}, valid_session
        response.should redirect_to(measurement)
      end
    end

    describe "with invalid params" do
      it "assigns the measurement as @measurement" do
        measurement = Measurement.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Measurement.any_instance.stub(:save).and_return(false)
        put :update, {:id => measurement.to_param, :measurement => { "well" => "invalid value" }}, valid_session
        assigns(:measurement).should eq(measurement)
      end

      it "re-renders the 'edit' template" do
        measurement = Measurement.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Measurement.any_instance.stub(:save).and_return(false)
        put :update, {:id => measurement.to_param, :measurement => { "well" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested measurement" do
      measurement = Measurement.create! valid_attributes
      expect {
        delete :destroy, {:id => measurement.to_param}, valid_session
      }.to change(Measurement, :count).by(-1)
    end

    it "redirects to the measurements list" do
      measurement = Measurement.create! valid_attributes
      delete :destroy, {:id => measurement.to_param}, valid_session
      response.should redirect_to(measurements_url)
    end
  end

end
