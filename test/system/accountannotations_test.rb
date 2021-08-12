require "application_system_test_case"

class AccountannotationsTest < ApplicationSystemTestCase
  setup do
    @accountannotation = accountannotations(:one)
  end

  test "visiting the index" do
    visit accountannotations_url
    assert_selector "h1", text: "Accountannotations"
  end

  test "creating a Accountannotation" do
    visit accountannotations_url
    click_on "New Accountannotation"

    fill_in "Account", with: @accountannotation.account_id
    fill_in "Annotation", with: @accountannotation.annotation_id
    click_on "Create Accountannotation"

    assert_text "Accountannotation was successfully created"
    click_on "Back"
  end

  test "updating a Accountannotation" do
    visit accountannotations_url
    click_on "Edit", match: :first

    fill_in "Account", with: @accountannotation.account_id
    fill_in "Annotation", with: @accountannotation.annotation_id
    click_on "Update Accountannotation"

    assert_text "Accountannotation was successfully updated"
    click_on "Back"
  end

  test "destroying a Accountannotation" do
    visit accountannotations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Accountannotation was successfully destroyed"
  end
end
