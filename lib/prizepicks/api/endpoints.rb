# frozen_string_literal: true

require_relative 'endpoints/entries'
require_relative 'endpoints/leagues'
require_relative 'endpoints/member_transactions'
require_relative 'endpoints/projections'
require_relative 'endpoints/sign_in'

module PrizePicks
  module Api
    module Endpoints
      include Entries
      include Leagues
      include MemberTransactions
      include Projections
      include SignIn
    end
  end
end
