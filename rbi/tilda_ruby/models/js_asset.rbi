# typed: strong

module TildaRuby
  module Models
    class JsAsset < TildaRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(TildaRuby::JsAsset, TildaRuby::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :from

      sig { returns(String) }
      attr_accessor :to

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :attrs

      sig { params(attrs: T::Array[String]).void }
      attr_writer :attrs

      sig do
        params(from: String, to: String, attrs: T::Array[String]).returns(
          T.attached_class
        )
      end
      def self.new(from:, to:, attrs: nil)
      end

      sig do
        override.returns({ from: String, to: String, attrs: T::Array[String] })
      end
      def to_hash
      end
    end
  end
end
