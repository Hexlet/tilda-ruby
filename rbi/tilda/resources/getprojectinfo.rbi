# typed: strong

module Tilda
  module Resources
    class Getprojectinfo
      sig do
        params(
          projectid: String,
          request_options: Tilda::RequestOptions::OrHash
        ).returns(Tilda::Models::GetprojectinfoRetrieveResponse::Variants)
      end
      def retrieve(projectid:, request_options: {})
      end

      # @api private
      sig { params(client: Tilda::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
