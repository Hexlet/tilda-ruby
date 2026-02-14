# frozen_string_literal: true

module TildaRuby
  module Resources
    class Getpageslist
      # @overload retrieve(projectid:, request_options: {})
      #
      # @param projectid [String]
      # @param request_options [TildaRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TildaRuby::Models::GetpageslistRetrieveResponse::UnionMember0, TildaRuby::Models::Error]
      #
      # @see TildaRuby::Models::GetpageslistRetrieveParams
      def retrieve(params)
        parsed, options = TildaRuby::GetpageslistRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/getpageslist",
          query: parsed,
          model: TildaRuby::Models::GetpageslistRetrieveResponse,
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
