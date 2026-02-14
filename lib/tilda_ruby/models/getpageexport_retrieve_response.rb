# frozen_string_literal: true

module TildaRuby
  module Models
    # @see TildaRuby::Resources::Getpageexport#retrieve
    module GetpageexportRetrieveResponse
      extend TildaRuby::Internal::Type::Union

      variant -> { TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0 }

      variant -> { TildaRuby::Error }

      class UnionMember0 < TildaRuby::Internal::Type::BaseModel
        # @!attribute result
        #
        #   @return [TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result]
        required :result, -> { TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result }

        # @!attribute status
        #
        #   @return [Symbol, TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Status]
        required :status, enum: -> { TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Status }

        # @!method initialize(result:, status:)
        #   @param result [TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result]
        #   @param status [Symbol, TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Status]

        # @see TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0#result
        class Result < TildaRuby::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute alias_
          #
          #   @return [String]
          required :alias_, String, api_name: :alias

          # @!attribute date
          #
          #   @return [String]
          required :date, String

          # @!attribute descr
          #
          #   @return [String]
          required :descr, String

          # @!attribute featureimg
          #
          #   @return [String]
          required :featureimg, String

          # @!attribute filename
          #
          #   @return [String]
          required :filename, String

          # @!attribute html
          #
          #   @return [String]
          required :html, String

          # @!attribute img
          #
          #   @return [String]
          required :img, String

          # @!attribute projectid
          #
          #   @return [String]
          required :projectid, String

          # @!attribute published
          #
          #   @return [String]
          required :published, String

          # @!attribute sort
          #
          #   @return [String]
          required :sort, String

          # @!attribute title
          #
          #   @return [String]
          required :title, String

          # @!attribute css
          #
          #   @return [Array<TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result::Css>, nil]
          optional :css,
                   -> { TildaRuby::Internal::Type::ArrayOf[TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result::Css] }

          # @!attribute images
          #
          #   @return [Array<TildaRuby::Models::ImageMapping>, nil]
          optional :images, -> { TildaRuby::Internal::Type::ArrayOf[TildaRuby::ImageMapping] }

          # @!attribute js
          #
          #   @return [Array<TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result::J>, nil]
          optional :js,
                   -> { TildaRuby::Internal::Type::ArrayOf[TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result::J] }

          # @!method initialize(id:, alias_:, date:, descr:, featureimg:, filename:, html:, img:, projectid:, published:, sort:, title:, css: nil, images: nil, js: nil)
          #   @param id [String]
          #   @param alias_ [String]
          #   @param date [String]
          #   @param descr [String]
          #   @param featureimg [String]
          #   @param filename [String]
          #   @param html [String]
          #   @param img [String]
          #   @param projectid [String]
          #   @param published [String]
          #   @param sort [String]
          #   @param title [String]
          #   @param css [Array<TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result::Css>]
          #   @param images [Array<TildaRuby::Models::ImageMapping>]
          #   @param js [Array<TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0::Result::J>]

          class Css < TildaRuby::Internal::Type::BaseModel
            # @!attribute from
            #
            #   @return [String]
            required :from, String

            # @!attribute to
            #
            #   @return [String]
            required :to, String

            # @!method initialize(from:, to:)
            #   @param from [String]
            #   @param to [String]
          end

          class J < TildaRuby::Internal::Type::BaseModel
            # @!attribute from
            #
            #   @return [String]
            required :from, String

            # @!attribute to
            #
            #   @return [String]
            required :to, String

            # @!attribute attrs
            #
            #   @return [Array<String>, nil]
            optional :attrs, TildaRuby::Internal::Type::ArrayOf[String]

            # @!method initialize(from:, to:, attrs: nil)
            #   @param from [String]
            #   @param to [String]
            #   @param attrs [Array<String>]
          end
        end

        # @see TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0#status
        module Status
          extend TildaRuby::Internal::Type::Enum

          FOUND = :FOUND

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0, TildaRuby::Models::Error)]
    end
  end
end
