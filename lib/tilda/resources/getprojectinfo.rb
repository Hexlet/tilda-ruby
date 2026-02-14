# frozen_string_literal: true

module Tilda
  module Resources
    class Getprojectinfo
      # @overload retrieve(projectid:, request_options: {})
      #
      # @param projectid [String]
      # @param request_options [Tilda::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Tilda::Models::GetprojectinfoRetrieveResponse::UnionMember0, Tilda::Models::Error]
      #
      # @see Tilda::Models::GetprojectinfoRetrieveParams
      def retrieve(params)
        parsed, options = Tilda::GetprojectinfoRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/getprojectinfo",
          query: parsed,
          model: Tilda::Models::GetprojectinfoRetrieveResponse,
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
