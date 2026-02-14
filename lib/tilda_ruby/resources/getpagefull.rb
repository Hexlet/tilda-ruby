# frozen_string_literal: true

module TildaRuby
  module Resources
    class Getpagefull
      # @overload retrieve(pageid:, request_options: {})
      #
      # @param pageid [String]
      # @param request_options [TildaRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TildaRuby::Models::GetpagefullRetrieveResponse::UnionMember0, TildaRuby::Models::Error]
      #
      # @see TildaRuby::Models::GetpagefullRetrieveParams
      def retrieve(params)
        parsed, options = TildaRuby::GetpagefullRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/getpagefull",
          query: parsed,
          model: TildaRuby::Models::GetpagefullRetrieveResponse,
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
