# frozen_string_literal: true

module Tilda
  module Resources
    class Getprojectslist
      # @overload list(request_options: {})
      #
      # @param request_options [Tilda::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Tilda::Models::GetprojectslistListResponse::UnionMember0, Tilda::Models::Error]
      #
      # @see Tilda::Models::GetprojectslistListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "v1/getprojectslist",
          model: Tilda::Models::GetprojectslistListResponse,
          options: params[:request_options]
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
