# frozen_string_literal: true
require 'test_helper'

module PrizePicks
  module Api
    module Endpoints
      class TestLeagues < MiniTest::Test
        def test_leagues_endpoint
          assert_equal '/v1/leagues', PrizePicks::Api::Endpoints::Leagues::ENDPOINT
        end

        def test_entries
          stub = stub_request(PrizePicks::Api::Endpoints::Leagues::ENDPOINT,
                              response: stub_response(fixture: 'leagues'))
          client = init_client(stub: stub)
          resp = client.leagues
          assert_equal PrizePicks::Collection, resp.class
          assert_equal PrizePicks::League, resp.data.first.class
        end
      end
    end
  end
end
