# typed: strong

module Tilda
  module Models
    class GetprojectinfoRetrieveParams < Tilda::Internal::Type::BaseModel
      extend Tilda::Internal::Type::RequestParameters::Converter
      include Tilda::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Tilda::GetprojectinfoRetrieveParams, Tilda::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :projectid

      sig do
        params(
          projectid: String,
          request_options: Tilda::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(projectid:, request_options: {})
      end

      sig do
        override.returns(
          { projectid: String, request_options: Tilda::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
