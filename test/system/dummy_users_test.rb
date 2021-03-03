require "application_system_test_case"

class DummyUsersTest < ApplicationSystemTestCase
  setup do
    @dummy_user = dummy_users(:one)
  end

  test "visiting the index" do
    visit dummy_users_url
    assert_selector "h1", text: "Dummy Users"
  end

  test "creating a Dummy user" do
    visit dummy_users_url
    click_on "New Dummy User"

    fill_in "Email", with: @dummy_user.email
    fill_in "Password", with: @dummy_user.password
    click_on "Create Dummy user"

    assert_text "Dummy user was successfully created"
    click_on "Back"
  end

  test "updating a Dummy user" do
    visit dummy_users_url
    click_on "Edit", match: :first

    fill_in "Email", with: @dummy_user.email
    fill_in "Password", with: @dummy_user.password
    click_on "Update Dummy user"

    assert_text "Dummy user was successfully updated"
    click_on "Back"
  end

  test "destroying a Dummy user" do
    visit dummy_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dummy user was successfully destroyed"
  end
end
