require 'test_helper'

class RealAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @real_account = real_accounts(:one)
  end

  test "should get index" do
    get real_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_real_account_url
    assert_response :success
  end

  test "should create real_account" do
    assert_difference('RealAccount.count') do
      post real_accounts_url, params: { real_account: { disbursement_amount: @real_account.disbursement_amount, disbursement_date: @real_account.disbursement_date, fb_email: @real_account.fb_email, fb_profile_link: @real_account.fb_profile_link, fb_pw: @real_account.fb_pw, firstname: @real_account.firstname, ip: @real_account.ip, lastname: @real_account.lastname, notes: @real_account.notes, paypal_email: @real_account.paypal_email, phone: @real_account.phone, referrer_paypal: @real_account.referrer_paypal, skype_username: @real_account.skype_username, startdate: @real_account.startdate } }
    end

    assert_redirected_to real_account_url(RealAccount.last)
  end

  test "should show real_account" do
    get real_account_url(@real_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_real_account_url(@real_account)
    assert_response :success
  end

  test "should update real_account" do
    patch real_account_url(@real_account), params: { real_account: { disbursement_amount: @real_account.disbursement_amount, disbursement_date: @real_account.disbursement_date, fb_email: @real_account.fb_email, fb_profile_link: @real_account.fb_profile_link, fb_pw: @real_account.fb_pw, firstname: @real_account.firstname, ip: @real_account.ip, lastname: @real_account.lastname, notes: @real_account.notes, paypal_email: @real_account.paypal_email, phone: @real_account.phone, referrer_paypal: @real_account.referrer_paypal, skype_username: @real_account.skype_username, startdate: @real_account.startdate } }
    assert_redirected_to real_account_url(@real_account)
  end

  test "should destroy real_account" do
    assert_difference('RealAccount.count', -1) do
      delete real_account_url(@real_account)
    end

    assert_redirected_to real_accounts_url
  end
end
