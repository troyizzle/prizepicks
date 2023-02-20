# frozen_string_literal: true
module PrizePicks
  module Api
    module Endpoints
      module Leagues
        ENDPOINT = '/v1/leagues'

        def leagues(options = {})
          resp = request(:get, ENDPOINT, options)
          Collection.from_response(resp, type: League)
        end
      end
    end
  end
end
