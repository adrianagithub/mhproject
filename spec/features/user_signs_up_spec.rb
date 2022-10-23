require 'rails_helper'

RSpec.feature 'User signs up' do
  scenario 'with valid data' do
    visit new_user_registration_path

    fill_in 'Email', with: 'username@example.com'
    fill_in 'Password', with: 'Pa$$word1'
    fill_in 'Password confirmation', with: 'Pa$$word1'
    click_button 'Sign up'

    expect(page).to have_text 'Welcome! You have signed up successfully.'
    expect(page).to have_link 'Sign Out'
  end

  scenario 'with invalid data' do
    visit new_user_registration_path

    click_button 'Sign up'

    expect(page).to have_text "Email can't be blank"
    expect(page).to have_text "Password can't be blank"
    expect(page).to have_no_link 'Sign Out'
  end
end