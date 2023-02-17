# frozen_string_literal: true

require 'prizepicks/version'
require 'prizepicks/config'

require 'faraday'
require 'faraday-cookie_jar'

require_relative 'prizepicks/faraday/connection'
require_relative 'prizepicks/faraday/request'
require_relative 'prizepicks/api/endpoints'
require_relative 'prizepicks/client'

# module Prizepicks
#   class Error < StandardError; end
#   # Your code goes here...
# end
