# typed: strong

module TildaRuby
  module Models
    module GetpageslistRetrieveResponse
      extend TildaRuby::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            TildaRuby::Models::GetpageslistRetrieveResponse::UnionMember0,
            TildaRuby::Error
          )
        end

      class UnionMember0 < TildaRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              TildaRuby::Models::GetpageslistRetrieveResponse::UnionMember0,
              TildaRuby::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              TildaRuby::Models::GetpageslistRetrieveResponse::UnionMember0::Result
            ]
          )
        end
        attr_accessor :result

        sig do
          returns(
            TildaRuby::Models::GetpageslistRetrieveResponse::UnionMember0::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig do
          params(
            result:
              T::Array[
                TildaRuby::Models::GetpageslistRetrieveResponse::UnionMember0::Result::OrHash
              ],
            status:
              TildaRuby::Models::GetpageslistRetrieveResponse::UnionMember0::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(result:, status:)
        end

        sig do
          override.returns(
            {
              result:
                T::Array[
                  TildaRuby::Models::GetpageslistRetrieveResponse::UnionMember0::Result
                ],
              status:
                TildaRuby::Models::GetpageslistRetrieveResponse::UnionMember0::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Result < TildaRuby::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                TildaRuby::Models::GetpageslistRetrieveResponse::UnionMember0::Result,
                TildaRuby::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :alias_

          sig { returns(String) }
          attr_accessor :date

          sig { returns(String) }
          attr_accessor :descr

          sig { returns(String) }
          attr_accessor :featureimg

          sig { returns(String) }
          attr_accessor :filename

          sig { returns(String) }
          attr_accessor :img

          sig { returns(String) }
          attr_accessor :projectid

          sig { returns(String) }
          attr_accessor :published

          sig { returns(String) }
          attr_accessor :sort

          sig { returns(String) }
          attr_accessor :title

          sig do
            params(
              id: String,
              alias_: String,
              date: String,
              descr: String,
              featureimg: String,
              filename: String,
              img: String,
              projectid: String,
              published: String,
              sort: String,
              title: String
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            alias_:,
            date:,
            descr:,
            featureimg:,
            filename:,
            img:,
            projectid:,
            published:,
            sort:,
            title:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                alias_: String,
                date: String,
                descr: String,
                featureimg: String,
                filename: String,
                img: String,
                projectid: String,
                published: String,
                sort: String,
                title: String
              }
            )
          end
          def to_hash
          end
        end

        module Status
          extend TildaRuby::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                TildaRuby::Models::GetpageslistRetrieveResponse::UnionMember0::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FOUND =
            T.let(
              :FOUND,
              TildaRuby::Models::GetpageslistRetrieveResponse::UnionMember0::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                TildaRuby::Models::GetpageslistRetrieveResponse::UnionMember0::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      sig do
        override.returns(
          T::Array[TildaRuby::Models::GetpageslistRetrieveResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
