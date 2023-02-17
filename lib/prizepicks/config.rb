# frozen_string_literal: true
module PrizePicks
  module Config
    extend self

    ATTRIBUTES = %i[
      email
      endpoint
      password
    ].freeze

    attr_accessor(*Config::ATTRIBUTES)

    def reset
      self.endpoint = 'https://api.prizepicks.com/'
    end
  end

  class << self
    def configure
      block_given? ? yield(Config) : Config
    end

    def config
      Config
    end
  end
end

PrizePicks::Config.reset
