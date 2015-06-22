require "test_helper"

class LodgingsControllerTest < ActionController::TestCase
  def test_success
    get :index
    assert_response :success
    assert_template 'lodgings/index'
    assert_select 'title', 'Lodging'
  end
end
