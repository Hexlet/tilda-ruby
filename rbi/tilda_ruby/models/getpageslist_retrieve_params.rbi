# typed: strong

module TildaRuby
  module Models
    class GetpageslistRetrieveParams < TildaRuby::Internal::Type::BaseModel
      extend TildaRuby::Internal::Type::RequestParameters::Converter
      include TildaRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            TildaRuby::GetpageslistRetrieveParams,
            TildaRuby::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :projectid

      sig do
        params(
          projectid: String,
          request_options: TildaRuby::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(projectid:, request_options: {})
      end

      sig do
        override.returns(
          { projectid: String, request_options: TildaRuby::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
