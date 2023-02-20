# frozen_string_literal: true
module PrizePicks
  module Api
    module Endpoints
      module Projections
        ENDPOINT = '/v1/projections'

        def projections(options = {})
          resp = request(:get, ENDPOINT, options)
          Collection.from_response(resp, type: Projection)
        end
      end
    end
  end
end
