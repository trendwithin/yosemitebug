require "test_helper"

class DirectionsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_response :success
  end

end
