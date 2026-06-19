# frozen_string_literal: true

module TildaRuby
  module Resources
    class Projects
      # @overload retrieve(projectid:, request_options: {})
      #
      # @param projectid [String]
      # @param request_options [TildaRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TildaRuby::Models::ProjectRetrieveResponse::UnionMember0, TildaRuby::Models::ProjectRetrieveResponse::ErrorResponse]
      #
      # @see TildaRuby::Models::ProjectRetrieveParams
      def retrieve(params)
        parsed, options = TildaRuby::ProjectRetrieveParams.dump_request(params)
        query = TildaRuby::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/getprojectinfo",
          query: query,
          model: TildaRuby::Models::ProjectRetrieveResponse,
          options: options
        )
      end

      # @overload list(request_options: {})
      #
      # @param request_options [TildaRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TildaRuby::Models::ProjectListResponse::UnionMember0, TildaRuby::Models::ProjectListResponse::ErrorResponse]
      #
      # @see TildaRuby::Models::ProjectListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "v1/getprojectslist",
          model: TildaRuby::Models::ProjectListResponse,
          options: params[:request_options]
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
