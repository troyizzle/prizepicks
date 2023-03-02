# frozen_string_literal: true
require 'test_helper'

module PrizePicks
  class TestClient < MiniTest::Test
    def test_email
      client = init_client(email: 'foo@foo.com', password: 'foobar')
      assert_equal 'foo@foo.com', client.email
      assert_equal 'foobar', client.password
    end

    def test_inpsect
      client = init_client(email: 'foo@foo.com', password: 'foobar')
      assert_match(/[FILTERED]/, client.inspect)
    end
  end
end
