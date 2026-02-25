# frozen_string_literal: true

module TildaRuby
  module Models
    # @see TildaRuby::Resources::Pages#list
    module PageListResponse
      extend TildaRuby::Internal::Type::Union

      variant -> { TildaRuby::Models::PageListResponse::UnionMember0 }

      variant -> { TildaRuby::Models::PageListResponse::ErrorResponse }

      class UnionMember0 < TildaRuby::Internal::Type::BaseModel
        # @!attribute result
        #
        #   @return [Array<TildaRuby::Models::PageSummary>]
        required :result, -> { TildaRuby::Internal::Type::ArrayOf[TildaRuby::PageSummary] }

        # @!attribute status
        #
        #   @return [Symbol, TildaRuby::Models::PageListResponse::UnionMember0::Status]
        required :status, enum: -> { TildaRuby::Models::PageListResponse::UnionMember0::Status }

        # @!method initialize(result:, status:)
        #   @param result [Array<TildaRuby::Models::PageSummary>]
        #   @param status [Symbol, TildaRuby::Models::PageListResponse::UnionMember0::Status]

        # @see TildaRuby::Models::PageListResponse::UnionMember0#status
        module Status
          extend TildaRuby::Internal::Type::Enum

          FOUND = :FOUND

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class ErrorResponse < TildaRuby::Internal::Type::BaseModel
        # @!attribute status
        #
        #   @return [Symbol, TildaRuby::Models::PageListResponse::ErrorResponse::Status]
        required :status, enum: -> { TildaRuby::Models::PageListResponse::ErrorResponse::Status }

        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!method initialize(status:, message: nil)
        #   @param status [Symbol, TildaRuby::Models::PageListResponse::ErrorResponse::Status]
        #   @param message [String]

        # @see TildaRuby::Models::PageListResponse::ErrorResponse#status
        module Status
          extend TildaRuby::Internal::Type::Enum

          ERROR = :ERROR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(TildaRuby::Models::PageListResponse::UnionMember0, TildaRuby::Models::PageListResponse::ErrorResponse)]
    end
  end
end
