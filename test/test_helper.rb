# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)
require 'prizepicks'
require 'minitest/autorun'
require 'faraday'
require 'json'

module MiniTest
  class Test
    def stub_request(path, response:, method: :get, body: {})
      Faraday::Adapter::Test::Stubs.new do |stub|
        args = [method, "https://api.prizepicks.com#{path}"]
        args << body.to_json if %i[post put patch].include?(method)
        stub.send(*args) { |_env| response }
      end
    end

    def stub_response(fixture:, status: 200, headers: { 'Content-Type' => 'application/json' })
      [status, headers, File.read("test/fixtures/#{fixture}.json")]
    end

    def read_fixture(fixture)
      JSON.parse(File.read("test/fixtures/#{fixture}.json"))
    end
  end
end

def init_client(opts = {})
  opts[:adapter] = :test
  opts[:stubs] = opts[:stub]
  PrizePicks::Client.new(opts)
end
