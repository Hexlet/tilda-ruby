# frozen_string_literal: true

module Tilda
  module Resources
    class Getpagefull
      # @overload retrieve(pageid:, request_options: {})
      #
      # @param pageid [String]
      # @param request_options [Tilda::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Tilda::Models::GetpagefullRetrieveResponse::UnionMember0, Tilda::Models::Error]
      #
      # @see Tilda::Models::GetpagefullRetrieveParams
      def retrieve(params)
        parsed, options = Tilda::GetpagefullRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/getpagefull",
          query: parsed,
          model: Tilda::Models::GetpagefullRetrieveResponse,
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
