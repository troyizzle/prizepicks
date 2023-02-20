# frozen_string_literal: true
module PrizePicks
  module Api
    module Responses
      class User < OpenStruct
        def initialize(attributes)
          super to_obstruct(attributes)
        end

        def to_obstruct(_attributes)
          case obj
          when Hash
            OpenStruct.new(obj.transform_values { |val| to_obstruct(val) })
          when Array
            obj.map { |o| to_obstruct(o) }
          else
            obj
          end
        end
      end
    end
  end
end
