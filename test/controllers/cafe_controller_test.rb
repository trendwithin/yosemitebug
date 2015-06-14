require "test_helper"

class CafeControllerTest < ActionController::TestCase
  def test_success
    get :index
    assert_response :success
    assert_template 'cafe/index'
    assert_select 'title', 'June Bug Cafe'
  end
end
