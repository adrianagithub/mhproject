require 'rails_helper'

RSpec.describe "Therapists", type: :request do
  describe "GET /therapists" do
    it "works! (now write some real specs)" do
      get therapists_path
      expect(response).to have_http_status(302)
    end
  end
  describe "sign in" do
    it "signs user in" do
      user = User.create(email: 'test@icloud.com', password: "Pa$$word20", password_confirmation: "Pa$$word20")
      sign_in user
      get landing_page_path
      expect(response).to have_http_status(200)
    end
  end
  describe "get therapists_path" do
    it "renders the index view" do
      therapist = FactoryBot.create_list(:customer, 10)
      user = User.create(email: 'test@icloud.com', password: "Pa$$word20", password_confirmation: "Pa$$word20")
      sign_in user
      get therapists_path
      expect(response.status).to render_template(:index)
    end
  end
end
