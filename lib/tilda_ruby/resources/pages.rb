# frozen_string_literal: true

module TildaRuby
  module Resources
    class Pages
      # @overload retrieve(pageid:, request_options: {})
      #
      # @param pageid [String]
      # @param request_options [TildaRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TildaRuby::Models::PageRetrieveResponse::UnionMember0, TildaRuby::Models::PageRetrieveResponse::ErrorResponse]
      #
      # @see TildaRuby::Models::PageRetrieveParams
      def retrieve(params)
        parsed, options = TildaRuby::PageRetrieveParams.dump_request(params)
        query = TildaRuby::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/getpage",
          query: query,
          model: TildaRuby::Models::PageRetrieveResponse,
          options: options
        )
      end

      # @overload list(projectid:, request_options: {})
      #
      # @param projectid [String]
      # @param request_options [TildaRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TildaRuby::Models::PageListResponse::UnionMember0, TildaRuby::Models::PageListResponse::ErrorResponse]
      #
      # @see TildaRuby::Models::PageListParams
      def list(params)
        parsed, options = TildaRuby::PageListParams.dump_request(params)
        query = TildaRuby::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/getpageslist",
          query: query,
          model: TildaRuby::Models::PageListResponse,
          options: options
        )
      end

      # @overload retrieve_full(pageid:, request_options: {})
      #
      # @param pageid [String]
      # @param request_options [TildaRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TildaRuby::Models::PageRetrieveFullResponse::UnionMember0, TildaRuby::Models::PageRetrieveFullResponse::ErrorResponse]
      #
      # @see TildaRuby::Models::PageRetrieveFullParams
      def retrieve_full(params)
        parsed, options = TildaRuby::PageRetrieveFullParams.dump_request(params)
        query = TildaRuby::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/getpagefull",
          query: query,
          model: TildaRuby::Models::PageRetrieveFullResponse,
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
