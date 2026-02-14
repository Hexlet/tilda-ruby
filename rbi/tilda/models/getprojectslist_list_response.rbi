# typed: strong

module Tilda
  module Models
    module GetprojectslistListResponse
      extend Tilda::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Tilda::Models::GetprojectslistListResponse::UnionMember0,
            Tilda::Error
          )
        end

      class UnionMember0 < Tilda::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Tilda::Models::GetprojectslistListResponse::UnionMember0,
              Tilda::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              Tilda::Models::GetprojectslistListResponse::UnionMember0::Result
            ]
          )
        end
        attr_accessor :result

        sig do
          returns(
            Tilda::Models::GetprojectslistListResponse::UnionMember0::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig do
          params(
            result:
              T::Array[
                Tilda::Models::GetprojectslistListResponse::UnionMember0::Result::OrHash
              ],
            status:
              Tilda::Models::GetprojectslistListResponse::UnionMember0::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(result:, status:)
        end

        sig do
          override.returns(
            {
              result:
                T::Array[
                  Tilda::Models::GetprojectslistListResponse::UnionMember0::Result
                ],
              status:
                Tilda::Models::GetprojectslistListResponse::UnionMember0::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Result < Tilda::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Tilda::Models::GetprojectslistListResponse::UnionMember0::Result,
                Tilda::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :descr

          sig { returns(String) }
          attr_accessor :title

          sig do
            params(id: String, descr: String, title: String).returns(
              T.attached_class
            )
          end
          def self.new(id:, descr:, title:)
          end

          sig { override.returns({ id: String, descr: String, title: String }) }
          def to_hash
          end
        end

        module Status
          extend Tilda::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Tilda::Models::GetprojectslistListResponse::UnionMember0::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FOUND =
            T.let(
              :FOUND,
              Tilda::Models::GetprojectslistListResponse::UnionMember0::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Tilda::Models::GetprojectslistListResponse::UnionMember0::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      sig do
        override.returns(
          T::Array[Tilda::Models::GetprojectslistListResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
