require 'minitest/autorun'
require_relative 'my_truncate'

class MyTruncateTest < MiniTest::Test
  def test_my_truncate
    assert_equal "Hello World!", "Hello World!".my_truncate(12)
    assert_equal "Hello Wor...", "Hello World!!".my_truncate(12)
  end

  def test_my_truncate_with_omission_and_separator
    skip
    assert_equal "Hello[...]", "Hello World!".my_truncate(10, omission: "[...]")
    assert_equal "Hello[...]", "Hello Big World!".my_truncate(13, omission: "[...]", separator: " ")
    assert_equal "Hello Big[...]", "Hello Big World!".my_truncate(14, omission: "[...]", separator: " ")
    assert_equal "Hello Big[...]", "Hello Big World!".my_truncate(15, omission: "[...]", separator: " ")
  end

  def test_my_truncate_with_omission_and_regexp_separator
    skip
    assert_equal "Hello[...]", "Hello Big World!".my_truncate(13, omission: "[...]", separator: /\s/)
    assert_equal "Hello Big[...]", "Hello Big World!".my_truncate(14, omission: "[...]", separator: /\s/)
    assert_equal "Hello Big[...]", "Hello Big World!".my_truncate(15, omission: "[...]", separator: /\s/)
  end
end
