# typed: strong

module TildaRuby
  module Resources
    class Getprojectinfo
      sig do
        params(
          projectid: String,
          request_options: TildaRuby::RequestOptions::OrHash
        ).returns(TildaRuby::Models::GetprojectinfoRetrieveResponse::Variants)
      end
      def retrieve(projectid:, request_options: {})
      end

      # @api private
      sig { params(client: TildaRuby::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
