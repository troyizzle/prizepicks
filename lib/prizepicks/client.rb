# frozen_string_literal: true
module PrizePicks
  class Client
    include Faraday::Connection
    include Faraday::Request
    include Api::Endpoints

    attr_accessor(*Config::ATTRIBUTES)

    def initialize(options = {})
      PrizePicks::Config::ATTRIBUTES.each do |key|
        send("#{key}=", options.fetch(key, PrizePicks.config.send(key)))
      end

      raise ArgumentError, 'Missing :email' unless email
      raise ArgumentError, 'Missing :password' unless password
    end
  end
end
