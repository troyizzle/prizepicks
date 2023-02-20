# frozen_string_literal: true
require 'faraday'
require 'faraday-cookie_jar'
require 'prizepicks/version'
# require 'prizepicks/config'
require_relative 'prizepicks/faraday/connection'
require_relative 'prizepicks/faraday/request'
require_relative 'prizepicks/api/endpoints'
# require_relative 'prizepicks/client'

module PrizePicks
  autoload :Client, 'prizepicks/client'
  autoload :Collection, 'prizepicks/collection'
  autoload :Config, 'prizepicks/config'
  autoload :Error, 'prizepicks/error'

  # Responses
  autoload :Responses, 'prizepicks/api/responses'

  # Object
  autoload :Base, 'prizepicks/objects/base'
  autoload :Entry, 'prizepicks/objects/entry'
  autoload :League, 'prizepicks/objects/league'
  autoload :Projection, 'prizepicks/objects/projection'
  autoload :User, 'prizepicks/objects/user'
end
