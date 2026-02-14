# typed: strong

module TildaRuby
  module Models
    module GetprojectinfoRetrieveResponse
      extend TildaRuby::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0,
            TildaRuby::Error
          )
        end

      class UnionMember0 < TildaRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0,
              TildaRuby::Internal::AnyHash
            )
          end

        sig do
          returns(
            TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0::Result
          )
        end
        attr_reader :result

        sig do
          params(
            result:
              TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0::Result::OrHash
          ).void
        end
        attr_writer :result

        sig do
          returns(
            TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig do
          params(
            result:
              TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0::Result::OrHash,
            status:
              TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(result:, status:)
        end

        sig do
          override.returns(
            {
              result:
                TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0::Result,
              status:
                TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Result < TildaRuby::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0::Result,
                TildaRuby::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :customcsstext

          sig { returns(String) }
          attr_accessor :customdomain

          sig { returns(String) }
          attr_accessor :descr

          sig { returns(String) }
          attr_accessor :export_csspath

          sig { returns(String) }
          attr_accessor :export_imgpath

          sig { returns(String) }
          attr_accessor :export_jspath

          sig { returns(String) }
          attr_accessor :favicon

          sig { returns(String) }
          attr_accessor :indexpageid

          sig { returns(String) }
          attr_accessor :page404id

          sig { returns(String) }
          attr_accessor :title

          sig { returns(T.nilable(T::Array[TildaRuby::ImageMapping])) }
          attr_reader :images

          sig { params(images: T::Array[TildaRuby::ImageMapping::OrHash]).void }
          attr_writer :images

          sig do
            params(
              id: String,
              customcsstext: String,
              customdomain: String,
              descr: String,
              export_csspath: String,
              export_imgpath: String,
              export_jspath: String,
              favicon: String,
              indexpageid: String,
              page404id: String,
              title: String,
              images: T::Array[TildaRuby::ImageMapping::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            customcsstext:,
            customdomain:,
            descr:,
            export_csspath:,
            export_imgpath:,
            export_jspath:,
            favicon:,
            indexpageid:,
            page404id:,
            title:,
            images: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                customcsstext: String,
                customdomain: String,
                descr: String,
                export_csspath: String,
                export_imgpath: String,
                export_jspath: String,
                favicon: String,
                indexpageid: String,
                page404id: String,
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
                TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FOUND =
            T.let(
              :FOUND,
              TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      sig do
        override.returns(
          T::Array[TildaRuby::Models::GetprojectinfoRetrieveResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
