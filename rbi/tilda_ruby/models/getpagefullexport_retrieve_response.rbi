# typed: strong

module TildaRuby
  module Models
    module GetpagefullexportRetrieveResponse
      extend TildaRuby::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            TildaRuby::Models::GetpagefullexportRetrieveResponse::UnionMember0,
            TildaRuby::Error
          )
        end

      class UnionMember0 < TildaRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              TildaRuby::Models::GetpagefullexportRetrieveResponse::UnionMember0,
              TildaRuby::Internal::AnyHash
            )
          end

        sig do
          returns(
            TildaRuby::Models::GetpagefullexportRetrieveResponse::UnionMember0::Result
          )
        end
        attr_reader :result

        sig do
          params(
            result:
              TildaRuby::Models::GetpagefullexportRetrieveResponse::UnionMember0::Result::OrHash
          ).void
        end
        attr_writer :result

        sig do
          returns(
            TildaRuby::Models::GetpagefullexportRetrieveResponse::UnionMember0::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig do
          params(
            result:
              TildaRuby::Models::GetpagefullexportRetrieveResponse::UnionMember0::Result::OrHash,
            status:
              TildaRuby::Models::GetpagefullexportRetrieveResponse::UnionMember0::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(result:, status:)
        end

        sig do
          override.returns(
            {
              result:
                TildaRuby::Models::GetpagefullexportRetrieveResponse::UnionMember0::Result,
              status:
                TildaRuby::Models::GetpagefullexportRetrieveResponse::UnionMember0::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Result < TildaRuby::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                TildaRuby::Models::GetpagefullexportRetrieveResponse::UnionMember0::Result,
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
          attr_accessor :html

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

          sig { returns(T.nilable(T::Array[TildaRuby::ImageMapping])) }
          attr_reader :images

          sig { params(images: T::Array[TildaRuby::ImageMapping::OrHash]).void }
          attr_writer :images

          sig do
            params(
              id: String,
              alias_: String,
              date: String,
              descr: String,
              featureimg: String,
              filename: String,
              html: String,
              img: String,
              projectid: String,
              published: String,
              sort: String,
              title: String,
              images: T::Array[TildaRuby::ImageMapping::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            alias_:,
            date:,
            descr:,
            featureimg:,
            filename:,
            html:,
            img:,
            projectid:,
            published:,
            sort:,
            title:,
            images: nil
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
                html: String,
                img: String,
                projectid: String,
                published: String,
                sort: String,
                title: String,
                images: T::Array[TildaRuby::ImageMapping]
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
                TildaRuby::Models::GetpagefullexportRetrieveResponse::UnionMember0::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FOUND =
            T.let(
              :FOUND,
              TildaRuby::Models::GetpagefullexportRetrieveResponse::UnionMember0::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                TildaRuby::Models::GetpagefullexportRetrieveResponse::UnionMember0::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      sig do
        override.returns(
          T::Array[
            TildaRuby::Models::GetpagefullexportRetrieveResponse::Variants
          ]
        )
      end
      def self.variants
      end
    end
  end
end
