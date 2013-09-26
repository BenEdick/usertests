require "test_helper"

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new name: 'Test'
  end

  def test_valid
    assert @user.valid?
  end

  def test_invalid_without_name
    @user.name = nil
    refute @user.valid?
  end


end
