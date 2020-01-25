require "application_system_test_case"

class GivesTest < ApplicationSystemTestCase
  setup do
    @gife = gives(:one)
  end

  test "visiting the index" do
    visit gives_url
    assert_selector "h1", text: "Gives"
  end

  test "creating a Give" do
    visit gives_url
    click_on "New Give"

    fill_in "Name", with: @gife.name
    click_on "Create Give"

    assert_text "Give was successfully created"
    click_on "Back"
  end

  test "updating a Give" do
    visit gives_url
    click_on "Edit", match: :first

    fill_in "Name", with: @gife.name
    click_on "Update Give"

    assert_text "Give was successfully updated"
    click_on "Back"
  end

  test "destroying a Give" do
    visit gives_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Give was successfully destroyed"
  end
end
