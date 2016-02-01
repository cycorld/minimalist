require 'test_helper'

class GarragesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @garrage = garrages(:one)
  end

  test "should get index" do
    get garrages_url
    assert_response :success
  end

  test "should get new" do
    get new_garrage_url
    assert_response :success
  end

  test "should create garrage" do
    assert_difference('Garrage.count') do
      post garrages_url, params: { garrage: { address: @garrage.address, latitude: @garrage.latitude, longitude: @garrage.longitude } }
    end

    assert_redirected_to garrage_path(Garrage.last)
  end

  test "should show garrage" do
    get garrage_url(@garrage)
    assert_response :success
  end

  test "should get edit" do
    get edit_garrage_url(@garrage)
    assert_response :success
  end

  test "should update garrage" do
    patch garrage_url(@garrage), params: { garrage: { address: @garrage.address, latitude: @garrage.latitude, longitude: @garrage.longitude } }
    assert_redirected_to garrage_path(@garrage)
  end

  test "should destroy garrage" do
    assert_difference('Garrage.count', -1) do
      delete garrage_url(@garrage)
    end

    assert_redirected_to garrages_path
  end
end
