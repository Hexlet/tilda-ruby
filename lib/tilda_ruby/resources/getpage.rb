# frozen_string_literal: true

module TildaRuby
  module Resources
    class Getpage
      # @overload retrieve(pageid:, request_options: {})
      #
      # @param pageid [String]
      # @param request_options [TildaRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TildaRuby::Models::GetpageRetrieveResponse::UnionMember0, TildaRuby::Models::Error]
      #
      # @see TildaRuby::Models::GetpageRetrieveParams
      def retrieve(params)
        parsed, options = TildaRuby::GetpageRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/getpage",
          query: parsed,
          model: TildaRuby::Models::GetpageRetrieveResponse,
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
