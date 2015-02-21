require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'set default preferences' do
    user = User.create!
    assert_equal Hash.new, user.preferences
  end

  test 'preferences uses serializer' do
    user = User.create!
    assert_equal HashWithIndifferentAccess, user.preferences.class
  end

  test 'dumps preferences' do
    user = User.create!(preferences: {blog: 'http://example.org'})
    user.reload
    assert_equal user.preferences[:blog], 'http://example.org'
  end

  test 'sets blog accessor' do
    user = User.new
    user.blog = 'http://example.org'
    assert_equal 'http://example.org', user.preferences[:blog]
  end
end
