# frozen_string_literal: true

module TildaRuby
  module Resources
    class Getprojectslist
      # @overload list(request_options: {})
      #
      # @param request_options [TildaRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TildaRuby::Models::GetprojectslistListResponse::UnionMember0, TildaRuby::Models::Error]
      #
      # @see TildaRuby::Models::GetprojectslistListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "v1/getprojectslist",
          model: TildaRuby::Models::GetprojectslistListResponse,
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
