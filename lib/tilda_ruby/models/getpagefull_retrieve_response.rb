# frozen_string_literal: true

module TildaRuby
  module Models
    # @see TildaRuby::Resources::Getpagefull#retrieve
    module GetpagefullRetrieveResponse
      extend TildaRuby::Internal::Type::Union

      variant -> { TildaRuby::Models::GetpagefullRetrieveResponse::UnionMember0 }

      variant -> { TildaRuby::Error }

      class UnionMember0 < TildaRuby::Internal::Type::BaseModel
        # @!attribute result
        #
        #   @return [TildaRuby::Models::GetpagefullRetrieveResponse::UnionMember0::Result]
        required :result, -> { TildaRuby::Models::GetpagefullRetrieveResponse::UnionMember0::Result }

        # @!attribute status
        #
        #   @return [Symbol, TildaRuby::Models::GetpagefullRetrieveResponse::UnionMember0::Status]
        required :status, enum: -> { TildaRuby::Models::GetpagefullRetrieveResponse::UnionMember0::Status }

        # @!method initialize(result:, status:)
        #   @param result [TildaRuby::Models::GetpagefullRetrieveResponse::UnionMember0::Result]
        #   @param status [Symbol, TildaRuby::Models::GetpagefullRetrieveResponse::UnionMember0::Status]

        # @see TildaRuby::Models::GetpagefullRetrieveResponse::UnionMember0#result
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

          # @!method initialize(id:, alias_:, date:, descr:, featureimg:, filename:, html:, img:, projectid:, published:, sort:, title:)
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
        end

        # @see TildaRuby::Models::GetpagefullRetrieveResponse::UnionMember0#status
        module Status
          extend TildaRuby::Internal::Type::Enum

          FOUND = :FOUND

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(TildaRuby::Models::GetpagefullRetrieveResponse::UnionMember0, TildaRuby::Models::Error)]
    end
  end
end
