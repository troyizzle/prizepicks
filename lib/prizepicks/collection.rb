# frozen_string_literal: true
module PrizePicks
  class Collection
    attr_reader :data, :included, :total_pages, :current_page

    def self.from_response(response, type:)
      new(
        data: response['data'].map { |attrs| type.new(attrs) },
        included: parse_included_data(response['included']),
        current_page: response.dig('meta', 'current_page'),
        total_pages: response.dig('meta', 'total_pages')
      )
    end

    def initialize(data:, included:, current_page:, total_pages:)
      @data = data
      @included = included
      @current_page = current_page
      @total_pages = total_pages
    end

    def self.parse_included_data(included)
      included.map do |attrs|
        type = attrs['type'].capitalize
        class_name = "PrizePicks::#{type}"
        klass = if Object.const_defined?(class_name)
                  Object.const_get(class_name)
                else
                  PrizePicks::Base
                end
        klass.new(attrs)
      end
    end
  end
end
