require 'rails_helper'

RSpec.describe Api::WelcomeController, :type => :controller do

  describe "GET all" do
    it "returns http success" do
      get :all
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
