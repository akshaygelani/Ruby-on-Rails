require 'test_helper'

class ProductdetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get productdetails_index_url
    assert_response :success
  end

  test "should get new" do
    get productdetails_new_url
    assert_response :success
  end

  test "should get create" do
    get productdetails_create_url
    assert_response :success
  end

end
