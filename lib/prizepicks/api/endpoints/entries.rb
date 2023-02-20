# frozen_string_literal: true
module PrizePicks
  module Api
    module Endpoints
      module Entries
        ENDPOINT = '/v1/entries'

        def entries(options = {})
          raise ArgumentError, 'email is required' unless @email
          raise ArgumentError, 'password is required' unless @password

          resp = request(:get, ENDPOINT, options)
          Collection.from_response(resp, type: Entry)
        end
      end
    end
  end
end
