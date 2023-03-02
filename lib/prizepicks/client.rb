# frozen_string_literal: true
module PrizePicks
  class Client
    include Faraday::Connection
    include Faraday::Request
    include Api::Endpoints

    attr_accessor(*Config::ATTRIBUTES)
    attr_reader :adapter

    def initialize(options = {})
      PrizePicks::Config::ATTRIBUTES.each do |key|
        send("#{key}=", options.fetch(key, PrizePicks.config.send(key)))
      end

      # For testing
      @stubs = options[:stubs] || nil
      @adapter = options[:adapter] || nil
    end

    def inspect
      content = Config::ATTRIBUTES.map do |key|
        if key == :password
          "#{key}: [FILTERED]"
        else
          "#{key}: #{send(key).inspect}"
        end
      end.compact.join(', ')

      "#<#{self.class.name} #{content}>"
    end
  end
end
