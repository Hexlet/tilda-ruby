# frozen_string_literal: true

module Tilda
  module Resources
    class Getpageexport
      # @overload retrieve(pageid:, request_options: {})
      #
      # @param pageid [String]
      # @param request_options [Tilda::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Tilda::Models::GetpageexportRetrieveResponse::UnionMember0, Tilda::Models::Error]
      #
      # @see Tilda::Models::GetpageexportRetrieveParams
      def retrieve(params)
        parsed, options = Tilda::GetpageexportRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/getpageexport",
          query: parsed,
          model: Tilda::Models::GetpageexportRetrieveResponse,
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
