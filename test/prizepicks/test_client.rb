# frozen_string_literal: true
require 'test_helper'

module PrizePicks
  class TestClient < MiniTest::Test
    # def test_client_setup_raises_error_without_email
    #   assert_raises ArgumentError do
    #     init_client(password: 'foobar')
    #   end
    # end
    #
    # def test_client_setup_raises_error_without_password
    #   assert_raises ArgumentError do
    #     init_client(email: 'foo@foo.com')
    #   end
    # end

    def test_email
      client = init_client(email: 'foo@foo.com', password: 'foobar')
      assert_equal 'foo@foo.com', client.email
      assert_equal 'foobar', client.password
    end
  end
end
