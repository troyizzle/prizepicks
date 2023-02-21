# frozen_string_literal: true
require 'test_helper'

module PrizePicks
  module Api
    module Endpoints
      class TestEntries < MiniTest::Test
        def test_entries_endpoint
          assert_equal '/v1/entries', PrizePicks::Api::Endpoints::Entries::ENDPOINT
        end

        def test_entries_will_raise_error_if_not_signed_in
          client = init_client
          assert_raises ArgumentError do
            client.entries
          end
        end

        def test_entries
          stub = stub_request(PrizePicks::Api::Endpoints::Entries::ENDPOINT,
                              response: stub_response(fixture: 'entries'))
          client = init_client(email: 'fake@fake.com', password: 'fake123!',
                               stub: stub)
          resp = client.entries
          assert_equal PrizePicks::Collection, resp.class
          first_entry = resp.data.first
          assert_equal PrizePicks::Entry, first_entry.class
          assert_equal 2000, first_entry.amount_bet_cents
          assert_equal '134928677', first_entry.data['id']
        end
      end
    end
  end
end
