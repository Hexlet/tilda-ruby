# frozen_string_literal: true

module TildaRuby
  module Resources
    class Getprojectinfo
      # @overload retrieve(projectid:, request_options: {})
      #
      # @param projectid [String]
      # @param request_options [TildaRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0, TildaRuby::Models::Error]
      #
      # @see TildaRuby::Models::GetprojectinfoRetrieveParams
      def retrieve(params)
        parsed, options = TildaRuby::GetprojectinfoRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/getprojectinfo",
          query: parsed,
          model: TildaRuby::Models::GetprojectinfoRetrieveResponse,
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
