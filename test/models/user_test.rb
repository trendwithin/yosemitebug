require "test_helper"

class UserTest < ActiveSupport::TestCase

  def user
    @user ||= User.new(name: 'me', email: 'myself@i.com', role: 'admin', password: 'password')
  end

  def test_valid
    assert user.valid?
  end

end
