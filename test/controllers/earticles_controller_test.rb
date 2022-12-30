require 'test_helper'

class EarticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get earticles_new_url
    assert_response :success
  end

  test "should get index" do
    get earticles_index_url
    assert_response :success
  end

  test "should get edit" do
    get earticles_edit_url
    assert_response :success
  end

  test "should get show" do
    get earticles_show_url
    assert_response :success
  end

end
