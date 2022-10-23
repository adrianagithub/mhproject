require 'rails_helper'

RSpec.feature 'User signs in' do
  scenario 'with valid credentials' do
    user = FactoryBot.create(:user)
    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'

    expect(page).to have_text 'Signed in successfully.'
    expect(page).to have_link 'Sign Out'
  end

  scenario 'with invalid credentials' do
    user_wrong_hash = {email: "adi_111@hotmailcom", created_at: Time.now, updated_at: Time.now}
    user = User.create(user_wrong_hash)

    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'

    expect(page).to have_text 'Invalid Email or password.'
    expect(page).to have_no_link 'Sign Out'
  end
end