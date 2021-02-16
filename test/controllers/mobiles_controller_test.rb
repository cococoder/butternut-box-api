require 'test_helper'

class MobilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mobile = mobiles(:valid_uk_numner)
    new_numer =  SecureRandom.random_number(10**9).to_s.rjust(9, '0')
    @mobile.number = "07#{new_numer}" 
  end

  test "should get index" do
    get mobiles_url, as: :json
    assert_response :success
  end

  test "should create mobile" do
    assert_difference('Mobile.count') do
      post mobiles_url, params: { mobile: { number: @mobile.number } }, as: :json
    end

    assert_response 201
  end

  test "should show mobile" do
    get mobile_url(@mobile), as: :json
    assert_response :success
  end

  test "should update mobile" do
    patch mobile_url(@mobile), params: { mobile: { number: @mobile.number } }, as: :json
    assert_response 200
  end

  test "should destroy mobile" do
    assert_difference('Mobile.count', -1) do
      delete mobile_url(@mobile), as: :json
    end

    assert_response 204
  end
end
