# typed: strong

module TildaRuby
  module Models
    module ExportRetrieveFullResponse
      extend TildaRuby::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            TildaRuby::Models::ExportRetrieveFullResponse::UnionMember0,
            TildaRuby::Models::ExportRetrieveFullResponse::ErrorResponse
          )
        end

      class UnionMember0 < TildaRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              TildaRuby::Models::ExportRetrieveFullResponse::UnionMember0,
              TildaRuby::Internal::AnyHash
            )
          end

        sig { returns(TildaRuby::PageExportFull) }
        attr_reader :result

        sig { params(result: TildaRuby::PageExportFull::OrHash).void }
        attr_writer :result

        sig do
          returns(
            TildaRuby::Models::ExportRetrieveFullResponse::UnionMember0::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig do
          params(
            result: TildaRuby::PageExportFull::OrHash,
            status:
              TildaRuby::Models::ExportRetrieveFullResponse::UnionMember0::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(result:, status:)
        end

        sig do
          override.returns(
            {
              result: TildaRuby::PageExportFull,
              status:
                TildaRuby::Models::ExportRetrieveFullResponse::UnionMember0::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Status
          extend TildaRuby::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                TildaRuby::Models::ExportRetrieveFullResponse::UnionMember0::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FOUND =
            T.let(
              :FOUND,
              TildaRuby::Models::ExportRetrieveFullResponse::UnionMember0::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                TildaRuby::Models::ExportRetrieveFullResponse::UnionMember0::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class ErrorResponse < TildaRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              TildaRuby::Models::ExportRetrieveFullResponse::ErrorResponse,
              TildaRuby::Internal::AnyHash
            )
          end

        sig do
          returns(
            TildaRuby::Models::ExportRetrieveFullResponse::ErrorResponse::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        sig do
          params(
            status:
              TildaRuby::Models::ExportRetrieveFullResponse::ErrorResponse::Status::OrSymbol,
            message: String
          ).returns(T.attached_class)
        end
        def self.new(status:, message: nil)
        end

        sig do
          override.returns(
            {
              status:
                TildaRuby::Models::ExportRetrieveFullResponse::ErrorResponse::Status::TaggedSymbol,
              message: String
            }
          )
        end
        def to_hash
        end

        module Status
          extend TildaRuby::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                TildaRuby::Models::ExportRetrieveFullResponse::ErrorResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ERROR =
            T.let(
              :ERROR,
              TildaRuby::Models::ExportRetrieveFullResponse::ErrorResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                TildaRuby::Models::ExportRetrieveFullResponse::ErrorResponse::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      sig do
        override.returns(
          T::Array[TildaRuby::Models::ExportRetrieveFullResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
