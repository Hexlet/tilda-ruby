# frozen_string_literal: true

module TildaRuby
  module Resources
    class Export
      # @overload retrieve(pageid:, request_options: {})
      #
      # @param pageid [String]
      # @param request_options [TildaRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TildaRuby::Models::ExportRetrieveResponse::UnionMember0, TildaRuby::Models::ExportRetrieveResponse::ErrorResponse]
      #
      # @see TildaRuby::Models::ExportRetrieveParams
      def retrieve(params)
        parsed, options = TildaRuby::ExportRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/getpageexport",
          query: parsed,
          model: TildaRuby::Models::ExportRetrieveResponse,
          options: options
        )
      end

      # @overload retrieve_full(pageid:, request_options: {})
      #
      # @param pageid [String]
      # @param request_options [TildaRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TildaRuby::Models::ExportRetrieveFullResponse::UnionMember0, TildaRuby::Models::ExportRetrieveFullResponse::ErrorResponse]
      #
      # @see TildaRuby::Models::ExportRetrieveFullParams
      def retrieve_full(params)
        parsed, options = TildaRuby::ExportRetrieveFullParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/getpagefullexport",
          query: parsed,
          model: TildaRuby::Models::ExportRetrieveFullResponse,
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
