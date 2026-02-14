# typed: strong

module Tilda
  module Models
    class GetpagefullexportRetrieveParams < Tilda::Internal::Type::BaseModel
      extend Tilda::Internal::Type::RequestParameters::Converter
      include Tilda::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Tilda::GetpagefullexportRetrieveParams,
            Tilda::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :pageid

      sig do
        params(
          pageid: String,
          request_options: Tilda::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(pageid:, request_options: {})
      end

      sig do
        override.returns(
          { pageid: String, request_options: Tilda::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
