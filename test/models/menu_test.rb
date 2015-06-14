require "test_helper"

class MenuTest < ActiveSupport::TestCase

  def setup
    @bf = menus(:breakfast)
    @l = menus(:lunch)
    @d = menus(:dinner)
  end

  def menu
    @menu ||= Menu.new(item: 'Green Eggs and Ham', description: 'Sam I am', price: '$5.96', meal: 'breakfast')
  end

  def test_valid
    assert menu.valid?
  end

  test 'empty item is not valid' do
    menu.item = '     '
    assert_not menu.valid?
  end

  test 'empty description is not valid' do
    menu.description = '     '
    assert_not menu.valid?
  end

  test 'empty price is not valid' do
    menu.price = ''
    assert_not menu.valid?
  end
end
