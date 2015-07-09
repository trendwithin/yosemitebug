require "test_helper"

class ActivitiesControllerTest < ActionController::TestCase
  def test_spring
    get :spring
    assert_response :success
  end

  def test_summer
    get :summer
    assert_response :success
  end

  def test_autumn
    get :autumn
    assert_response :success
  end

  def test_winter
    get :winter
    assert_response :success
  end

end
