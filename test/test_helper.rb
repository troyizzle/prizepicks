# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)
require 'prizepicks'

require 'minitest/autorun'

def init_client(opts = {})
  PrizePicks::Client.new(opts)
end
