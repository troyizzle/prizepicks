# frozen_string_literal: true
module PrizePicks
  class Entry < Base
    def related_predictions
      data.dig('relationships', 'predictions', 'data').map { |d| d['id'] }
    end
  end
end
