# frozen_string_literal: true

module TildaRuby
  module Resources
    class Getpageexport
      # @overload retrieve(pageid:, request_options: {})
      #
      # @param pageid [String]
      # @param request_options [TildaRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0, TildaRuby::Models::Error]
      #
      # @see TildaRuby::Models::GetpageexportRetrieveParams
      def retrieve(params)
        parsed, options = TildaRuby::GetpageexportRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/getpageexport",
          query: parsed,
          model: TildaRuby::Models::GetpageexportRetrieveResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [TildaRuby::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
