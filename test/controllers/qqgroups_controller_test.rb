require 'test_helper'

class QqgroupsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get qqgroups_index_url
    assert_response :success
  end

  test "should get show" do
    get qqgroups_show_url
    assert_response :success
  end

end
