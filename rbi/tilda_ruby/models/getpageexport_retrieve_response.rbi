# typed: strong

module TildaRuby
  module Models
    module GetpageexportRetrieveResponse
      extend TildaRuby::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0,
            TildaRuby::Error
          )
        end

      class UnionMember0 < TildaRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0,
              TildaRuby::Internal::AnyHash
            )
          end

        sig do
          returns(
            TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result
          )
        end
        attr_reader :result

        sig do
          params(
            result:
              TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result::OrHash
          ).void
        end
        attr_writer :result

        sig do
          returns(
            TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig do
          params(
            result:
              TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result::OrHash,
            status:
              TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(result:, status:)
        end

        sig do
          override.returns(
            {
              result:
                TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result,
              status:
                TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Result < TildaRuby::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result,
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

          sig do
            returns(
              T.nilable(
                T::Array[
                  TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result::Css
                ]
              )
            )
          end
          attr_reader :css

          sig do
            params(
              css:
                T::Array[
                  TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result::Css::OrHash
                ]
            ).void
          end
          attr_writer :css

          sig { returns(T.nilable(T::Array[TildaRuby::ImageMapping])) }
          attr_reader :images

          sig { params(images: T::Array[TildaRuby::ImageMapping::OrHash]).void }
          attr_writer :images

          sig do
            returns(
              T.nilable(
                T::Array[
                  TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result::J
                ]
              )
            )
          end
          attr_reader :js

          sig do
            params(
              js:
                T::Array[
                  TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result::J::OrHash
                ]
            ).void
          end
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
              css:
                T::Array[
                  TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result::Css::OrHash
                ],
              images: T::Array[TildaRuby::ImageMapping::OrHash],
              js:
                T::Array[
                  TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result::J::OrHash
                ]
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
            images: nil,
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
                css:
                  T::Array[
                    TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result::Css
                  ],
                images: T::Array[TildaRuby::ImageMapping],
                js:
                  T::Array[
                    TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result::J
                  ]
              }
            )
          end
          def to_hash
          end

          class Css < TildaRuby::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result::Css,
                  TildaRuby::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :from

            sig { returns(String) }
            attr_accessor :to

            sig { params(from: String, to: String).returns(T.attached_class) }
            def self.new(from:, to:)
            end

            sig { override.returns({ from: String, to: String }) }
            def to_hash
            end
          end

          class J < TildaRuby::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result::J,
                  TildaRuby::Internal::AnyHash
                )
              end

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
              override.returns(
                { from: String, to: String, attrs: T::Array[String] }
              )
            end
            def to_hash
            end
          end
        end

        module Status
          extend TildaRuby::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FOUND =
            T.let(
              :FOUND,
              TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      sig do
        override.returns(
          T::Array[TildaRuby::Models::GetpageexportRetrieveResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
