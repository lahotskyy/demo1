require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = User.new(name: 'Example User',
                     email: 'user@example.com',
                     age: 18,
                     sex: 'male',
                     password: 'Rew2)@1234',
                     password_confirmation: 'Rew2)@1234')
  end

  test 'should be valid' do
    assert @user.valid?
  end

  test 'name should not be too long' do
    @user.name = 'a' * 20
    assert_not @user.valid?
  end

  test 'email validation should accept valid addresses' do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test 'email validation should reject invalid addresses' do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test 'age should not be greater_than 16' do
    @user.age = 12
    assert_not @user.valid?
  end

  test 'age should be greater_than 16' do
    @user.age = 22
    assert @user.valid?
  end

  test 'password should be present (nonblank)' do
    @user.password = @user.password_confirmation = '      '
    assert_not @user.valid?
  end

  test 'password should have a minimum length (7 char)' do
    @user.password = @user.password_confirmation = 'aaaaaa'
    assert_not @user.valid?
  end

  test 'sex should not be in [male, female, other]' do
    @user.sex = 'malex'
    assert_not @user.valid?
  end

  test 'sex should be in [male, female, other]' do
    @user.sex = 'female'
    assert @user.valid?
  end
end
