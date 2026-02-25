# frozen_string_literal: true

module TildaRuby
  module Models
    # @see TildaRuby::Resources::Projects#retrieve
    module ProjectRetrieveResponse
      extend TildaRuby::Internal::Type::Union

      variant -> { TildaRuby::Models::ProjectRetrieveResponse::UnionMember0 }

      variant -> { TildaRuby::Models::ProjectRetrieveResponse::ErrorResponse }

      class UnionMember0 < TildaRuby::Internal::Type::BaseModel
        # @!attribute result
        #
        #   @return [TildaRuby::Models::ProjectInfo]
        required :result, -> { TildaRuby::ProjectInfo }

        # @!attribute status
        #
        #   @return [Symbol, TildaRuby::Models::ProjectRetrieveResponse::UnionMember0::Status]
        required :status, enum: -> { TildaRuby::Models::ProjectRetrieveResponse::UnionMember0::Status }

        # @!method initialize(result:, status:)
        #   @param result [TildaRuby::Models::ProjectInfo]
        #   @param status [Symbol, TildaRuby::Models::ProjectRetrieveResponse::UnionMember0::Status]

        # @see TildaRuby::Models::ProjectRetrieveResponse::UnionMember0#status
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
        #   @return [Symbol, TildaRuby::Models::ProjectRetrieveResponse::ErrorResponse::Status]
        required :status, enum: -> { TildaRuby::Models::ProjectRetrieveResponse::ErrorResponse::Status }

        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!method initialize(status:, message: nil)
        #   @param status [Symbol, TildaRuby::Models::ProjectRetrieveResponse::ErrorResponse::Status]
        #   @param message [String]

        # @see TildaRuby::Models::ProjectRetrieveResponse::ErrorResponse#status
        module Status
          extend TildaRuby::Internal::Type::Enum

          ERROR = :ERROR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(TildaRuby::Models::ProjectRetrieveResponse::UnionMember0, TildaRuby::Models::ProjectRetrieveResponse::ErrorResponse)]
    end
  end
end
