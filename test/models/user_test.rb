require "test_helper"

class UserTest < ActiveSupport::TestCase

  def user
    @user ||= User.new(name: 'me', email: 'myself@i.com', role: 'admin', password: 'password')
  end

  def test_valid
    assert user.valid?
  end

  test 'user is admin' do
    assert user.valid? if user.role == 'admin'
  end

  test 'non-admin role is currently invalid' do
    assert_not user.valid? if user.role != 'admin'
  end
end
