# frozen_string_literal: true

module PrizePicks
  module Api
    module Endpoints
      module SignIn
        ENDPOINT = '/users/sign_in'

        def sign_in
          resp = request(:post, ENDPOINT, {
            user: {
              email: @email,
              password: @password,
            },
          })

          User.new(resp)
        end
      end
    end
  end
end
