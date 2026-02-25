# frozen_string_literal: true

module TildaRuby
  module Models
    # @see TildaRuby::Resources::Pages#retrieve_full
    module PageRetrieveFullResponse
      extend TildaRuby::Internal::Type::Union

      variant -> { TildaRuby::Models::PageRetrieveFullResponse::UnionMember0 }

      variant -> { TildaRuby::Models::PageRetrieveFullResponse::ErrorResponse }

      class UnionMember0 < TildaRuby::Internal::Type::BaseModel
        # @!attribute result
        #
        #   @return [TildaRuby::Models::PageFull]
        required :result, -> { TildaRuby::PageFull }

        # @!attribute status
        #
        #   @return [Symbol, TildaRuby::Models::PageRetrieveFullResponse::UnionMember0::Status]
        required :status, enum: -> { TildaRuby::Models::PageRetrieveFullResponse::UnionMember0::Status }

        # @!method initialize(result:, status:)
        #   @param result [TildaRuby::Models::PageFull]
        #   @param status [Symbol, TildaRuby::Models::PageRetrieveFullResponse::UnionMember0::Status]

        # @see TildaRuby::Models::PageRetrieveFullResponse::UnionMember0#status
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
        #   @return [Symbol, TildaRuby::Models::PageRetrieveFullResponse::ErrorResponse::Status]
        required :status, enum: -> { TildaRuby::Models::PageRetrieveFullResponse::ErrorResponse::Status }

        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!method initialize(status:, message: nil)
        #   @param status [Symbol, TildaRuby::Models::PageRetrieveFullResponse::ErrorResponse::Status]
        #   @param message [String]

        # @see TildaRuby::Models::PageRetrieveFullResponse::ErrorResponse#status
        module Status
          extend TildaRuby::Internal::Type::Enum

          ERROR = :ERROR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(TildaRuby::Models::PageRetrieveFullResponse::UnionMember0, TildaRuby::Models::PageRetrieveFullResponse::ErrorResponse)]
    end
  end
end
