# typed: strong

module TildaRuby
  module Resources
    class Projects
      sig do
        params(
          projectid: String,
          request_options: TildaRuby::RequestOptions::OrHash
        ).returns(TildaRuby::Models::ProjectRetrieveResponse::Variants)
      end
      def retrieve(projectid:, request_options: {})
      end

      sig do
        params(request_options: TildaRuby::RequestOptions::OrHash).returns(
          TildaRuby::Models::ProjectListResponse::Variants
        )
      end
      def list(request_options: {})
      end

      # @api private
      sig { params(client: TildaRuby::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
