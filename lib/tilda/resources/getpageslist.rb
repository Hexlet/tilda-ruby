# frozen_string_literal: true

module Tilda
  module Resources
    class Getpageslist
      # @overload retrieve(projectid:, request_options: {})
      #
      # @param projectid [String]
      # @param request_options [Tilda::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Tilda::Models::GetpageslistRetrieveResponse::UnionMember0, Tilda::Models::Error]
      #
      # @see Tilda::Models::GetpageslistRetrieveParams
      def retrieve(params)
        parsed, options = Tilda::GetpageslistRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/getpageslist",
          query: parsed,
          model: Tilda::Models::GetpageslistRetrieveResponse,
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
