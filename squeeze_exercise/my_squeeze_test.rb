require 'minitest/autorun'
require_relative 'my_squeeze'

class MySqueezeTest < MiniTest::Test
  def test_my_squeeze
    assert_equal "yelow mon", "yellow moon".my_squeeze
    assert_equal "yellow moon", "yellow   moon".my_squeeze(" ")
  end

  def test_my_squeeze_with_range
    skip
    assert_equal "puters shot balls", "putters shoot balls".my_squeeze("m-z")
  end
end
