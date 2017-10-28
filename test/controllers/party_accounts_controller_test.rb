require 'test_helper'

class PartyAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @party_account = party_accounts(:one)
  end

  test "should get index" do
    get party_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_party_account_url
    assert_response :success
  end

  test "should create party_account" do
    assert_difference('PartyAccount.count') do
      post party_accounts_url, params: { party_account: { account_id: @party_account.account_id, party_id: @party_account.party_id } }
    end

    assert_redirected_to party_account_url(PartyAccount.last)
  end

  test "should show party_account" do
    get party_account_url(@party_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_party_account_url(@party_account)
    assert_response :success
  end

  test "should update party_account" do
    patch party_account_url(@party_account), params: { party_account: { account_id: @party_account.account_id, party_id: @party_account.party_id } }
    assert_redirected_to party_account_url(@party_account)
  end

  test "should destroy party_account" do
    assert_difference('PartyAccount.count', -1) do
      delete party_account_url(@party_account)
    end

    assert_redirected_to party_accounts_url
  end
end
