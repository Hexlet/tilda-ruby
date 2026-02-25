# typed: strong

module TildaRuby
  module Models
    class ProjectListParams < TildaRuby::Internal::Type::BaseModel
      extend TildaRuby::Internal::Type::RequestParameters::Converter
      include TildaRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(TildaRuby::ProjectListParams, TildaRuby::Internal::AnyHash)
        end

      sig do
        params(request_options: TildaRuby::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: TildaRuby::RequestOptions }) }
      def to_hash
      end
    end
  end
end
