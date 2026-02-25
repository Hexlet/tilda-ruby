# typed: strong

module TildaRuby
  module Resources
    class Pages
      sig do
        params(
          pageid: String,
          request_options: TildaRuby::RequestOptions::OrHash
        ).returns(TildaRuby::Models::PageRetrieveResponse::Variants)
      end
      def retrieve(pageid:, request_options: {})
      end

      sig do
        params(
          projectid: String,
          request_options: TildaRuby::RequestOptions::OrHash
        ).returns(TildaRuby::Models::PageListResponse::Variants)
      end
      def list(projectid:, request_options: {})
      end

      sig do
        params(
          pageid: String,
          request_options: TildaRuby::RequestOptions::OrHash
        ).returns(TildaRuby::Models::PageRetrieveFullResponse::Variants)
      end
      def retrieve_full(pageid:, request_options: {})
      end

      # @api private
      sig { params(client: TildaRuby::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
