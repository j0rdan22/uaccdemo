require 'test_helper'

class PartiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @party = parties(:one)
  end

  test "should get index" do
    get parties_url
    assert_response :success
  end

  test "should get new" do
    get new_party_url
    assert_response :success
  end

  test "should create party" do
    assert_difference('Party.count') do
      post parties_url, params: { party: { added_by: @party.added_by, added_date: @party.added_date, address: @party.address, city: @party.city, email: @party.email, first_name: @party.first_name, last_four_ssn: @party.last_four_ssn, last_name: @party.last_name, modified_by: @party.modified_by, modified_date: @party.modified_date, party_type_id: @party.party_type_id, phone_number: @party.phone_number, state_id: @party.state_id, zip_code: @party.zip_code } }
    end

    assert_redirected_to party_url(Party.last)
  end

  test "should show party" do
    get party_url(@party)
    assert_response :success
  end

  test "should get edit" do
    get edit_party_url(@party)
    assert_response :success
  end

  test "should update party" do
    patch party_url(@party), params: { party: { added_by: @party.added_by, added_date: @party.added_date, address: @party.address, city: @party.city, email: @party.email, first_name: @party.first_name, last_four_ssn: @party.last_four_ssn, last_name: @party.last_name, modified_by: @party.modified_by, modified_date: @party.modified_date, party_type_id: @party.party_type_id, phone_number: @party.phone_number, state_id: @party.state_id, zip_code: @party.zip_code } }
    assert_redirected_to party_url(@party)
  end

  test "should destroy party" do
    assert_difference('Party.count', -1) do
      delete party_url(@party)
    end

    assert_redirected_to parties_url
  end
end
