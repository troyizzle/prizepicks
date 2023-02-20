# frozen_string_literal: true
module PrizePicks
  class Collection
    attr_reader :data, :total_pages, :current_page

    def self.from_response(response, type:)
      new(
        data: response['data'].map { |attrs| type.new(attrs) },
        current_page: response.dig('meta', 'current_page'),
        total_pages: response.dig('meta', 'total_pages')
      )
    end

    def initialize(data:, current_page:, total_pages:)
      @data = data
      @current_page = current_page
      @total_pages = total_pages
    end
  end
end
