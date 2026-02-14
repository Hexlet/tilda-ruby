# frozen_string_literal: true

module Tilda
  module Resources
    class Getpagefullexport
      # @overload retrieve(pageid:, request_options: {})
      #
      # @param pageid [String]
      # @param request_options [Tilda::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Tilda::Models::GetpagefullexportRetrieveResponse::UnionMember0, Tilda::Models::Error]
      #
      # @see Tilda::Models::GetpagefullexportRetrieveParams
      def retrieve(params)
        parsed, options = Tilda::GetpagefullexportRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/getpagefullexport",
          query: parsed,
          model: Tilda::Models::GetpagefullexportRetrieveResponse,
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
