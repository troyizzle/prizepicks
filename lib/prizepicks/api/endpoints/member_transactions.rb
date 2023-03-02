# frozen_string_literal: true

module PrizePicks
  module Api
    module Endpoints
      module MemberTransactions
        ENDPOINT = '/member_transactions'

        def member_transactions(options = {})
          resp = request(:get, ENDPOINT, options)
          Collection.from_response(parsed_resp(resp), type: MemberTransaction)
        end

        def parsed_resp(resp)
          { 'data' => resp.map { |r| r }, 'included' => [] }
        end
      end
    end
  end
end
