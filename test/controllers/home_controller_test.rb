require "test_helper"

class HomeControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_response :success
    assert_template 'home/index'
    assert_select "title", "Yosemite Bug"
  end

end
