# typed: strong

module Tilda
  module Resources
    class Getpagefullexport
      sig do
        params(
          pageid: String,
          request_options: Tilda::RequestOptions::OrHash
        ).returns(Tilda::Models::GetpagefullexportRetrieveResponse::Variants)
      end
      def retrieve(pageid:, request_options: {})
      end

      # @api private
      sig { params(client: Tilda::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
