# typed: strong

module Tilda
  module Models
    class Error < Tilda::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Tilda::Error, Tilda::Internal::AnyHash) }

      sig { returns(Tilda::Error::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      sig do
        params(status: Tilda::Error::Status::OrSymbol, message: String).returns(
          T.attached_class
        )
      end
      def self.new(status:, message: nil)
      end

      sig do
        override.returns(
          { status: Tilda::Error::Status::TaggedSymbol, message: String }
        )
      end
      def to_hash
      end

      module Status
        extend Tilda::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Tilda::Error::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ERROR = T.let(:ERROR, Tilda::Error::Status::TaggedSymbol)

        sig { override.returns(T::Array[Tilda::Error::Status::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
