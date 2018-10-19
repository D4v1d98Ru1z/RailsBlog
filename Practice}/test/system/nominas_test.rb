require "application_system_test_case"

class NominasTest < ApplicationSystemTestCase
  setup do
    @nomina = nominas(:one)
  end

  test "visiting the index" do
    visit nominas_url
    assert_selector "h1", text: "Nominas"
  end

  test "creating a Nomina" do
    visit nominas_url
    click_on "New Nomina"

    fill_in "Email", with: @nomina.email
    fill_in "Position", with: @nomina.position
    fill_in "Salary", with: @nomina.salary
    click_on "Create Nomina"

    assert_text "Nomina was successfully created"
    click_on "Back"
  end

  test "updating a Nomina" do
    visit nominas_url
    click_on "Edit", match: :first

    fill_in "Email", with: @nomina.email
    fill_in "Position", with: @nomina.position
    fill_in "Salary", with: @nomina.salary
    click_on "Update Nomina"

    assert_text "Nomina was successfully updated"
    click_on "Back"
  end

  test "destroying a Nomina" do
    visit nominas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nomina was successfully destroyed"
  end
end
