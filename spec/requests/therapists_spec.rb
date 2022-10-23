require 'rails_helper'

RSpec.describe "Therapists", type: :request do
  describe "GET /therapists" do
    it "works! (now write some real specs)" do
      get therapists_path
      expect(response).to have_http_status(302)
    end
  end
end
