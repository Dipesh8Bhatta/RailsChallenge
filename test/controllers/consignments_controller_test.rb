require 'test_helper'

class ConsignmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get consignments_index_url
    assert_response :success
  end

  test "should get import" do
    get consignments_import_url
    assert_response :success
  end

end
