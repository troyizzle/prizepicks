# frozen_string_literal: true
module PrizePicks
  module Api
    module Endpoints
      module Entries
        def entries(options = {})
          request(:get, 'v1/entries', options)
        end
      end
    end
  end
end
