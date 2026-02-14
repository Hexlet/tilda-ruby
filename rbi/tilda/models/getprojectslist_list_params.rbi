# typed: strong

module Tilda
  module Models
    class GetprojectslistListParams < Tilda::Internal::Type::BaseModel
      extend Tilda::Internal::Type::RequestParameters::Converter
      include Tilda::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Tilda::GetprojectslistListParams, Tilda::Internal::AnyHash)
        end

      sig do
        params(request_options: Tilda::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: Tilda::RequestOptions }) }
      def to_hash
      end
    end
  end
end
