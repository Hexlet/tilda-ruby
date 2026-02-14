# typed: strong

module Tilda
  module Resources
    class Getprojectslist
      sig do
        params(request_options: Tilda::RequestOptions::OrHash).returns(
          Tilda::Models::GetprojectslistListResponse::Variants
        )
      end
      def list(request_options: {})
      end

      # @api private
      sig { params(client: Tilda::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
