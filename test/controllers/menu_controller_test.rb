require 'test_helper'

class MenusControllerTest < ActionController::TestCase

  before do
    @user = users(:admin)
    @bf = menus(:breakfast)
    @lunch = menus(:lunch)

    @options = {
      item: 'Bacon and Eggs',
      description: 'Eggs your way with two slices of thick cut bacon',
      price: '$5.95',
      meal: 'breakfast'
    }
  end

  test 'menu index' do
    get :index
    assert_response :success
  end

  test 'new menu not viewable to guest' do
    assert_raises(Pundit::NotAuthorizedError) { get :new }
  end

  test 'new menu viewable for admin' do
    sign_in @user
    get :new
    assert_response :success
  end

  test 'SHOW: Admin can Show an Item' do
    sign_in @user
    get :show, id: @lunch.id
    assert_response :success
  end

  test 'CREATE: admin can create a new menu item' do
    sign_in @user
    assert_difference('Menu.count') do
      get :create, menu: @options
    end
    assert_equal "Menu Item was successfully saved.", flash[:notice]
  end

  test 'CREATE: is not permitted by non-admin' do
    assert_raises(Pundit::NotAuthorizedError) { get :create, menu: @options }
  end

  test 'PATCH: admin can update an existing item' do
    sign_in @user
    put :update, id: @bf.id, menu: @options
    assert_redirected_to menu_path(assigns(:menu))
    assert_equal "Menu Item was successfully updated.", flash[:notice]
  end

  test 'PATCH: is not permitted by non-admin' do
    assert_raises(Pundit::NotAuthorizedError) { put :update, id: @bf.id, menu: @options }
  end

  test 'DELETE: admin can delete an existing item' do
    sign_in @user
    assert_difference 'Menu.count',-1 do
      delete :destroy, id: menus(:breakfast)
      assert_equal "Menu Item was successfully deleted.", flash[:notice]
    end
  end

  test 'DELETE: is no permitted by non-admin' do
    assert_raises(Pundit::NotAuthorizedError) { delete :destroy, id: menus(:breakfast) }
  end
end
