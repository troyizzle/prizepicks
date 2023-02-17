# frozen_string_literal: true
module PrizePicks
  module Api
    module Endpoints
      module SignIn
        def sign_in
          request(:post, '/users/sign_in', {
            user: {
              email: @email,
              password: @password,
            },
          })
        end
      end
    end
  end
end
