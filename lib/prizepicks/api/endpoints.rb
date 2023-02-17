# frozen_string_literal: true

require_relative 'endpoints/entries'
require_relative 'endpoints/sign_in'

module PrizePicks
  module Api
    module Endpoints
      include Entries
      include SignIn
    end
  end
end
