# frozen_string_literal: true
require 'test_helper'

module PrizePicks
  module Api
    module Endpoints
      class TestSignIn < MiniTest::Test
        # rubocop:disable Metrics/MethodLength
        def test_sign_in
          stub = stub_request(PrizePicks::Api::Endpoints::SignIn::ENDPOINT,
                              method: :post,
                              response: stub_response(fixture: 'user'),
                              body: {
                                user: {
                                  email: 'fake@fake.com', password: 'fake123!'
                                },
                              })
          client = init_client(email: 'fake@fake.com', password: 'fake123!',
                               stub: stub)
          resp = client.sign_in
          assert_equal PrizePicks::User, resp.class
          assert_equal 'example@example.com', resp.email
        end
        # rubocop:enable Metrics/MethodLength
      end
    end
  end
end
