# frozen_string_literal: true
module PrizePicks
  module Faraday
    module Connection
      private

      def connection
        @connection ||= ::Faraday.new(endpoint) do |faraday|
          faraday.request :json
          faraday.response :json
          faraday.use :cookie_jar
          faraday.response :raise_error
          faraday.adapter adapter, @stubs
        end
      end
    end
  end
end
