# typed: strong

module TildaRuby
  module Resources
    class Getprojectslist
      sig do
        params(request_options: TildaRuby::RequestOptions::OrHash).returns(
          TildaRuby::Models::GetprojectslistListResponse::Variants
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
