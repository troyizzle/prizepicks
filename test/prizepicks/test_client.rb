# frozen_string_literal: true
require 'test_helper'

module PrizePicks
  class TestClient < MiniTest::Test
    def test_client_setup_raises_error_without_email
      assert_raises ArgumentError do
        init_client(password: 'foobar')
      end
    end

    def test_client_setup_raises_error_without_password
      assert_raises ArgumentError do
        init_client(email: 'foo@foo.com')
      end
    end
  end
end
