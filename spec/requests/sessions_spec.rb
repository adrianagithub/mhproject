require 'rails_helper'
RSpec.describe "Sessions" do
  it "signs user in and out" do
    @user = FactoryBot.create(:user)
    sign_in @user
    get landing_page_path
    expect(response.status).to eq(200)
    sign_out @user
    get landing_page_path
    expect(response.status).to eq(302)
  end
  it "won't sign user" do
    # User is not confirmed and role is stranger
    userstranger = {email: 'test@testcommx', password: 'Pa$$word111'}
    @user = User.create(userstranger)
    sign_in @user
    get user_session_path
    expect(response.status).to eq(302)
  end
end