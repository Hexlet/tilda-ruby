# frozen_string_literal: true

module TildaRuby
  module Resources
    class Getpagefullexport
      # @overload retrieve(pageid:, request_options: {})
      #
      # @param pageid [String]
      # @param request_options [TildaRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TildaRuby::Models::GetpagefullexportRetrieveResponse::UnionMember0, TildaRuby::Models::Error]
      #
      # @see TildaRuby::Models::GetpagefullexportRetrieveParams
      def retrieve(params)
        parsed, options = TildaRuby::GetpagefullexportRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/getpagefullexport",
          query: parsed,
          model: TildaRuby::Models::GetpagefullexportRetrieveResponse,
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
