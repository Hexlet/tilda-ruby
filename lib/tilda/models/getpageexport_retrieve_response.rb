# frozen_string_literal: true

module Tilda
  module Models
    # @see Tilda::Resources::Getpageexport#retrieve
    module GetpageexportRetrieveResponse
      extend Tilda::Internal::Type::Union

      variant -> { Tilda::Models::GetpageexportRetrieveResponse::UnionMember0 }

      variant -> { Tilda::Error }

      class UnionMember0 < Tilda::Internal::Type::BaseModel
        # @!attribute result
        #
        #   @return [Tilda::Models::GetpageexportRetrieveResponse::UnionMember0::Result]
        required :result, -> { Tilda::Models::GetpageexportRetrieveResponse::UnionMember0::Result }

        # @!attribute status
        #
        #   @return [Symbol, Tilda::Models::GetpageexportRetrieveResponse::UnionMember0::Status]
        required :status, enum: -> { Tilda::Models::GetpageexportRetrieveResponse::UnionMember0::Status }

        # @!method initialize(result:, status:)
        #   @param result [Tilda::Models::GetpageexportRetrieveResponse::UnionMember0::Result]
        #   @param status [Symbol, Tilda::Models::GetpageexportRetrieveResponse::UnionMember0::Status]

        # @see Tilda::Models::GetpageexportRetrieveResponse::UnionMember0#result
        class Result < Tilda::Internal::Type::BaseModel
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
          #   @return [Array<Tilda::Models::GetpageexportRetrieveResponse::UnionMember0::Result::Css>, nil]
          optional :css,
                   -> { Tilda::Internal::Type::ArrayOf[Tilda::Models::GetpageexportRetrieveResponse::UnionMember0::Result::Css] }

          # @!attribute images
          #
          #   @return [Array<Tilda::Models::ImageMapping>, nil]
          optional :images, -> { Tilda::Internal::Type::ArrayOf[Tilda::ImageMapping] }

          # @!attribute js
          #
          #   @return [Array<Tilda::Models::GetpageexportRetrieveResponse::UnionMember0::Result::J>, nil]
          optional :js,
                   -> { Tilda::Internal::Type::ArrayOf[Tilda::Models::GetpageexportRetrieveResponse::UnionMember0::Result::J] }

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
          #   @param css [Array<Tilda::Models::GetpageexportRetrieveResponse::UnionMember0::Result::Css>]
          #   @param images [Array<Tilda::Models::ImageMapping>]
          #   @param js [Array<Tilda::Models::GetpageexportRetrieveResponse::UnionMember0::Result::J>]

          class Css < Tilda::Internal::Type::BaseModel
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

          class J < Tilda::Internal::Type::BaseModel
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
            optional :attrs, Tilda::Internal::Type::ArrayOf[String]

            # @!method initialize(from:, to:, attrs: nil)
            #   @param from [String]
            #   @param to [String]
            #   @param attrs [Array<String>]
          end
        end

        # @see Tilda::Models::GetpageexportRetrieveResponse::UnionMember0#status
        module Status
          extend Tilda::Internal::Type::Enum

          FOUND = :FOUND

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(Tilda::Models::GetpageexportRetrieveResponse::UnionMember0, Tilda::Models::Error)]
    end
  end
end
