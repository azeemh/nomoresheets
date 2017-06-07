require 'test_helper'

class SmurvesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @smurf = smurves(:one)
  end

  test "should get index" do
    get smurves_url
    assert_response :success
  end

  test "should get new" do
    get new_smurf_url
    assert_response :success
  end

  test "should create smurf" do
    assert_difference('Smurf.count') do
      post smurves_url, params: { smurf: { cardtype: @smurf.cardtype, creditcardnumber: @smurf.creditcardnumber, email: @smurf.email, firstname: @smurf.firstname, ip: @smurf.ip, lastname: @smurf.lastname, login: @smurf.login, notes: @smurf.notes, password: @smurf.password, paypalemail: @smurf.paypalemail, startdate: @smurf.startdate, status: @smurf.status } }
    end

    assert_redirected_to smurf_url(Smurf.last)
  end

  test "should show smurf" do
    get smurf_url(@smurf)
    assert_response :success
  end

  test "should get edit" do
    get edit_smurf_url(@smurf)
    assert_response :success
  end

  test "should update smurf" do
    patch smurf_url(@smurf), params: { smurf: { cardtype: @smurf.cardtype, creditcardnumber: @smurf.creditcardnumber, email: @smurf.email, firstname: @smurf.firstname, ip: @smurf.ip, lastname: @smurf.lastname, login: @smurf.login, notes: @smurf.notes, password: @smurf.password, paypalemail: @smurf.paypalemail, startdate: @smurf.startdate, status: @smurf.status } }
    assert_redirected_to smurf_url(@smurf)
  end

  test "should destroy smurf" do
    assert_difference('Smurf.count', -1) do
      delete smurf_url(@smurf)
    end

    assert_redirected_to smurves_url
  end
end
