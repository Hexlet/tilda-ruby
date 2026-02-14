# typed: strong

module TildaRuby
  module Models
    class GetpageexportRetrieveParams < TildaRuby::Internal::Type::BaseModel
      extend TildaRuby::Internal::Type::RequestParameters::Converter
      include TildaRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            TildaRuby::GetpageexportRetrieveParams,
            TildaRuby::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :pageid

      sig do
        params(
          pageid: String,
          request_options: TildaRuby::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(pageid:, request_options: {})
      end

      sig do
        override.returns(
          { pageid: String, request_options: TildaRuby::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
