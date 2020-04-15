require 'minitest/autorun'
require_relative 'my_count'

class MyCountTest < MiniTest::Test
  def test_my_count
    s = "hello\nworld\x00\x00"

    assert_equal s.size, s.my_count(s)
    assert_equal 5, s.my_count("lo")
    assert_equal 3, s.my_count("eo")
    assert_equal 3, s.my_count("l")
    assert_equal 1, s.my_count("\n")
    assert_equal 2, s.my_count("\x00")

    assert_equal 0, s.my_count("")
    assert_equal 0, "".my_count("")
  end
end
