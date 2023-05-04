require 'test_helper'

class StatusesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get statuses_index_url
    assert_response :success
  end

  test "should get edit" do
    get statuses_edit_url
    assert_response :success
  end

end
