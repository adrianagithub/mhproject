require "application_system_test_case"

class TherapistsTest < ApplicationSystemTestCase
  setup do
    @therapist = therapists(:one)
  end

  test "visiting the index" do
    visit therapists_url
    assert_selector "h1", text: "Therapists"
  end

  test "creating a Therapist" do
    visit therapists_url
    click_on "New Therapist"

    fill_in "First name", with: @therapist.first_name
    fill_in "Kind", with: @therapist.kind
    fill_in "Last name", with: @therapist.last_name
    fill_in "Phone number", with: @therapist.phone_number
    fill_in "Picture", with: @therapist.picture
    fill_in "Url", with: @therapist.url
    click_on "Create Therapist"

    assert_text "Therapist was successfully created"
    click_on "Back"
  end

  test "updating a Therapist" do
    visit therapists_url
    click_on "Edit", match: :first

    fill_in "First name", with: @therapist.first_name
    fill_in "Kind", with: @therapist.kind
    fill_in "Last name", with: @therapist.last_name
    fill_in "Phone number", with: @therapist.phone_number
    fill_in "Picture", with: @therapist.picture
    fill_in "Url", with: @therapist.url
    click_on "Update Therapist"

    assert_text "Therapist was successfully updated"
    click_on "Back"
  end

  test "destroying a Therapist" do
    visit therapists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Therapist was successfully destroyed"
  end
end
