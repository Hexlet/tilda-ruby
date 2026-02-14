# typed: strong

module Tilda
  module Models
    module GetpageRetrieveResponse
      extend Tilda::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Tilda::Models::GetpageRetrieveResponse::UnionMember0,
            Tilda::Error
          )
        end

      class UnionMember0 < Tilda::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Tilda::Models::GetpageRetrieveResponse::UnionMember0,
              Tilda::Internal::AnyHash
            )
          end

        sig do
          returns(Tilda::Models::GetpageRetrieveResponse::UnionMember0::Result)
        end
        attr_reader :result

        sig do
          params(
            result:
              Tilda::Models::GetpageRetrieveResponse::UnionMember0::Result::OrHash
          ).void
        end
        attr_writer :result

        sig do
          returns(
            Tilda::Models::GetpageRetrieveResponse::UnionMember0::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig do
          params(
            result:
              Tilda::Models::GetpageRetrieveResponse::UnionMember0::Result::OrHash,
            status:
              Tilda::Models::GetpageRetrieveResponse::UnionMember0::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(result:, status:)
        end

        sig do
          override.returns(
            {
              result:
                Tilda::Models::GetpageRetrieveResponse::UnionMember0::Result,
              status:
                Tilda::Models::GetpageRetrieveResponse::UnionMember0::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Result < Tilda::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Tilda::Models::GetpageRetrieveResponse::UnionMember0::Result,
                Tilda::Internal::AnyHash
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

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :css

          sig { params(css: T::Array[String]).void }
          attr_writer :css

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :js

          sig { params(js: T::Array[String]).void }
          attr_writer :js

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
              css: T::Array[String],
              js: T::Array[String]
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
            css: nil,
            js: nil
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
                css: T::Array[String],
                js: T::Array[String]
              }
            )
          end
          def to_hash
          end
        end

        module Status
          extend Tilda::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Tilda::Models::GetpageRetrieveResponse::UnionMember0::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FOUND =
            T.let(
              :FOUND,
              Tilda::Models::GetpageRetrieveResponse::UnionMember0::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Tilda::Models::GetpageRetrieveResponse::UnionMember0::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      sig do
        override.returns(
          T::Array[Tilda::Models::GetpageRetrieveResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
