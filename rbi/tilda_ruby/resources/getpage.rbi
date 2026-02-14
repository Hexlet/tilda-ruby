# typed: strong

module TildaRuby
  module Resources
    class Getpage
      sig do
        params(
          pageid: String,
          request_options: TildaRuby::RequestOptions::OrHash
        ).returns(TildaRuby::Models::GetpageRetrieveResponse::Variants)
      end
      def retrieve(pageid:, request_options: {})
      end

      # @api private
      sig { params(client: TildaRuby::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
