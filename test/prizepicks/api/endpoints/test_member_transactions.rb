# frozen_string_literal: true
require 'test_helper'

module PrizePicks
  module Api
    module Endpoints
      class TestMemberTransactions < Minitest::Test
        def test_member_transactions
          stub = stub_request(PrizePicks::Api::Endpoints::MemberTransactions::ENDPOINT,
                              response: stub_response(fixture: 'member_transactions'))
          client = init_client(stub: stub)
          resp = client.member_transactions
          assert_equal PrizePicks::Collection, resp.class
          assert_equal PrizePicks::MemberTransaction, resp.data.first.class
        end
      end
    end
  end
end
