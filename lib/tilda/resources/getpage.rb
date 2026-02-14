# frozen_string_literal: true

module Tilda
  module Resources
    class Getpage
      # @overload retrieve(pageid:, request_options: {})
      #
      # @param pageid [String]
      # @param request_options [Tilda::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Tilda::Models::GetpageRetrieveResponse::UnionMember0, Tilda::Models::Error]
      #
      # @see Tilda::Models::GetpageRetrieveParams
      def retrieve(params)
        parsed, options = Tilda::GetpageRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/getpage",
          query: parsed,
          model: Tilda::Models::GetpageRetrieveResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Tilda::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
