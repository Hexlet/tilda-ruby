# frozen_string_literal: true

module TildaRuby
  module Models
    # @see TildaRuby::Resources::Getprojectslist#list
    module GetprojectslistListResponse
      extend TildaRuby::Internal::Type::Union

      variant -> { TildaRuby::Models::GetprojectslistListResponse::UnionMember0 }

      variant -> { TildaRuby::Error }

      class UnionMember0 < TildaRuby::Internal::Type::BaseModel
        # @!attribute result
        #
        #   @return [Array<TildaRuby::Models::GetprojectslistListResponse::UnionMember0::Result>]
        required :result,
                 -> { TildaRuby::Internal::Type::ArrayOf[TildaRuby::Models::GetprojectslistListResponse::UnionMember0::Result] }

        # @!attribute status
        #
        #   @return [Symbol, TildaRuby::Models::GetprojectslistListResponse::UnionMember0::Status]
        required :status, enum: -> { TildaRuby::Models::GetprojectslistListResponse::UnionMember0::Status }

        # @!method initialize(result:, status:)
        #   @param result [Array<TildaRuby::Models::GetprojectslistListResponse::UnionMember0::Result>]
        #   @param status [Symbol, TildaRuby::Models::GetprojectslistListResponse::UnionMember0::Status]

        class Result < TildaRuby::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute descr
          #
          #   @return [String]
          required :descr, String

          # @!attribute title
          #
          #   @return [String]
          required :title, String

          # @!method initialize(id:, descr:, title:)
          #   @param id [String]
          #   @param descr [String]
          #   @param title [String]
        end

        # @see TildaRuby::Models::GetprojectslistListResponse::UnionMember0#status
        module Status
          extend TildaRuby::Internal::Type::Enum

          FOUND = :FOUND

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(TildaRuby::Models::GetprojectslistListResponse::UnionMember0, TildaRuby::Models::Error)]
    end
  end
end
