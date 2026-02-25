# frozen_string_literal: true

module TildaRuby
  module Models
    # @see TildaRuby::Resources::Pages#retrieve
    module PageRetrieveResponse
      extend TildaRuby::Internal::Type::Union

      variant -> { TildaRuby::Models::PageRetrieveResponse::UnionMember0 }

      variant -> { TildaRuby::Models::PageRetrieveResponse::ErrorResponse }

      class UnionMember0 < TildaRuby::Internal::Type::BaseModel
        # @!attribute result
        #
        #   @return [TildaRuby::Models::PageBody]
        required :result, -> { TildaRuby::PageBody }

        # @!attribute status
        #
        #   @return [Symbol, TildaRuby::Models::PageRetrieveResponse::UnionMember0::Status]
        required :status, enum: -> { TildaRuby::Models::PageRetrieveResponse::UnionMember0::Status }

        # @!method initialize(result:, status:)
        #   @param result [TildaRuby::Models::PageBody]
        #   @param status [Symbol, TildaRuby::Models::PageRetrieveResponse::UnionMember0::Status]

        # @see TildaRuby::Models::PageRetrieveResponse::UnionMember0#status
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
        #   @return [Symbol, TildaRuby::Models::PageRetrieveResponse::ErrorResponse::Status]
        required :status, enum: -> { TildaRuby::Models::PageRetrieveResponse::ErrorResponse::Status }

        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!method initialize(status:, message: nil)
        #   @param status [Symbol, TildaRuby::Models::PageRetrieveResponse::ErrorResponse::Status]
        #   @param message [String]

        # @see TildaRuby::Models::PageRetrieveResponse::ErrorResponse#status
        module Status
          extend TildaRuby::Internal::Type::Enum

          ERROR = :ERROR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(TildaRuby::Models::PageRetrieveResponse::UnionMember0, TildaRuby::Models::PageRetrieveResponse::ErrorResponse)]
    end
  end
end
