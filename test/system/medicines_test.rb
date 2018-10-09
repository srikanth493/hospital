require "application_system_test_case"

class MedicinesTest < ApplicationSystemTestCase
  setup do
    @medicine = medicines(:one)
  end

  test "visiting the index" do
    visit medicines_url
    assert_selector "h1", text: "Medicines"
  end

  test "creating a Medicine" do
    visit medicines_url
    click_on "New Medicine"

    fill_in "Cost", with: @medicine.cost
    fill_in "Expiry Date", with: @medicine.expiry_date
    fill_in "Name", with: @medicine.name
    fill_in "Number Of Tablets", with: @medicine.number_of_tablets
    click_on "Create Medicine"

    assert_text "Medicine was successfully created"
    click_on "Back"
  end

  test "updating a Medicine" do
    visit medicines_url
    click_on "Edit", match: :first

    fill_in "Cost", with: @medicine.cost
    fill_in "Expiry Date", with: @medicine.expiry_date
    fill_in "Name", with: @medicine.name
    fill_in "Number Of Tablets", with: @medicine.number_of_tablets
    click_on "Update Medicine"

    assert_text "Medicine was successfully updated"
    click_on "Back"
  end

  test "destroying a Medicine" do
    visit medicines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medicine was successfully destroyed"
  end
end
