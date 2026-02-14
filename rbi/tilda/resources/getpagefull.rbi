# typed: strong

module Tilda
  module Resources
    class Getpagefull
      sig do
        params(
          pageid: String,
          request_options: Tilda::RequestOptions::OrHash
        ).returns(Tilda::Models::GetpagefullRetrieveResponse::Variants)
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
