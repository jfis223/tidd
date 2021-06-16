require 'test_helper'

class PetNotificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pet_notifications_index_url
    assert_response :success
  end

  test "should get show" do
    get pet_notifications_show_url
    assert_response :success
  end

  test "should get new" do
    get pet_notifications_new_url
    assert_response :success
  end

  test "should get create" do
    get pet_notifications_create_url
    assert_response :success
  end

  test "should get edit" do
    get pet_notifications_edit_url
    assert_response :success
  end

  test "should get update" do
    get pet_notifications_update_url
    assert_response :success
  end

  test "should get destroy" do
    get pet_notifications_destroy_url
    assert_response :success
  end

end
