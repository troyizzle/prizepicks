# frozen_string_literal: true
require 'ostruct'

module PrizePicks
  class Base < OpenStruct
    def initialize(resp)
      @resp = resp
      super to_obstruct(resp.dig('data', 'attributes'))
    end

    def data
      @resp['data']
    end

    def to_obstruct(obj)
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
