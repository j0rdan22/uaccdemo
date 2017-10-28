require 'test_helper'

class PartyMattersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @party_matter = party_matters(:one)
  end

  test "should get index" do
    get party_matters_url
    assert_response :success
  end

  test "should get new" do
    get new_party_matter_url
    assert_response :success
  end

  test "should create party_matter" do
    assert_difference('PartyMatter.count') do
      post party_matters_url, params: { party_matter: { matter_id: @party_matter.matter_id, party_id: @party_matter.party_id } }
    end

    assert_redirected_to party_matter_url(PartyMatter.last)
  end

  test "should show party_matter" do
    get party_matter_url(@party_matter)
    assert_response :success
  end

  test "should get edit" do
    get edit_party_matter_url(@party_matter)
    assert_response :success
  end

  test "should update party_matter" do
    patch party_matter_url(@party_matter), params: { party_matter: { matter_id: @party_matter.matter_id, party_id: @party_matter.party_id } }
    assert_redirected_to party_matter_url(@party_matter)
  end

  test "should destroy party_matter" do
    assert_difference('PartyMatter.count', -1) do
      delete party_matter_url(@party_matter)
    end

    assert_redirected_to party_matters_url
  end
end
