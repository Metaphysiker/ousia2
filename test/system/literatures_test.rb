require "application_system_test_case"

class LiteraturesTest < ApplicationSystemTestCase
  setup do
    @literature = literatures(:one)
  end

  test "visiting the index" do
    visit literatures_url
    assert_selector "h1", text: "Literatures"
  end

  test "creating a Literature" do
    visit literatures_url
    click_on "New Literature"

    fill_in "Title", with: @literature.title
    click_on "Create Literature"

    assert_text "Literature was successfully created"
    click_on "Back"
  end

  test "updating a Literature" do
    visit literatures_url
    click_on "Edit", match: :first

    fill_in "Title", with: @literature.title
    click_on "Update Literature"

    assert_text "Literature was successfully updated"
    click_on "Back"
  end

  test "destroying a Literature" do
    visit literatures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Literature was successfully destroyed"
  end
end
