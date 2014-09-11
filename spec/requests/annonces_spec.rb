require 'rails_helper'

RSpec.describe "Annonces", :type => :request do
  describe "GET /annonces" do
    it "works! (now write some real specs)" do
      get annonces_path
      expect(response).to have_http_status(200)
    end
  end
end
