# typed: strong

module TildaRuby
  module Models
    class Error < TildaRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(TildaRuby::Error, TildaRuby::Internal::AnyHash) }

      sig { returns(TildaRuby::Error::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      sig do
        params(
          status: TildaRuby::Error::Status::OrSymbol,
          message: String
        ).returns(T.attached_class)
      end
      def self.new(status:, message: nil)
      end

      sig do
        override.returns(
          { status: TildaRuby::Error::Status::TaggedSymbol, message: String }
        )
      end
      def to_hash
      end

      module Status
        extend TildaRuby::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, TildaRuby::Error::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ERROR = T.let(:ERROR, TildaRuby::Error::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[TildaRuby::Error::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
