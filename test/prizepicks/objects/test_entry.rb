# frozen_string_literal: true
require 'test_helper'

module Project
  class TestEntry < Minitest::Test
    def test_entry
      entry = PrizePicks::Entry.new(read_fixture('entry'))
      assert_equal 6000, entry.amount_to_win_cents
    end
  end
end
