require "application_system_test_case"

class PassangersTest < ApplicationSystemTestCase
  setup do
    @passanger = passangers(:one)
  end

  test "visiting the index" do
    visit passangers_url
    assert_selector "h1", text: "Passangers"
  end

  test "creating a Passanger" do
    visit passangers_url
    click_on "New Passanger"

    fill_in "From to", with: @passanger.From_To
    fill_in "Age", with: @passanger.age
    fill_in "Contact", with: @passanger.contact
    fill_in "Email", with: @passanger.email_id
    fill_in "Name", with: @passanger.name
    fill_in "Timing", with: @passanger.timing
    click_on "Create Passanger"

    assert_text "Passanger was successfully created"
    click_on "Back"
  end

  test "updating a Passanger" do
    visit passangers_url
    click_on "Edit", match: :first

    fill_in "From to", with: @passanger.From_To
    fill_in "Age", with: @passanger.age
    fill_in "Contact", with: @passanger.contact
    fill_in "Email", with: @passanger.email_id
    fill_in "Name", with: @passanger.name
    fill_in "Timing", with: @passanger.timing
    click_on "Update Passanger"

    assert_text "Passanger was successfully updated"
    click_on "Back"
  end

  test "destroying a Passanger" do
    visit passangers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Passanger was successfully destroyed"
  end
end
