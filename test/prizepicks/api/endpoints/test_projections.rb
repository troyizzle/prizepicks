# frozen_string_literal: true
require 'test_helper'

module PrizePicks
  module Api
    module Endpoints
      class TestProjections < MiniTest::Test
        def test_projections_endpoint
          assert_equal '/v1/projections', PrizePicks::Api::Endpoints::Projections::ENDPOINT
        end

        def test_projections
          stub = stub_request(PrizePicks::Api::Endpoints::Projections::ENDPOINT,
                              response: stub_response(fixture: 'projections'))
          client = init_client(stub:)
          resp = client.projections
          assert_equal PrizePicks::Collection, resp.class
          assert_equal PrizePicks::Projection, resp.data.first.class
          assert_equal 1, resp.total_pages
          assert_equal 1, resp.current_page
        end
      end
    end
  end
end
