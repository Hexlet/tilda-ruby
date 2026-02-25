# frozen_string_literal: true

module TildaRuby
  module Models
    # @see TildaRuby::Resources::Projects#list
    module ProjectListResponse
      extend TildaRuby::Internal::Type::Union

      variant -> { TildaRuby::Models::ProjectListResponse::UnionMember0 }

      variant -> { TildaRuby::Models::ProjectListResponse::ErrorResponse }

      class UnionMember0 < TildaRuby::Internal::Type::BaseModel
        # @!attribute result
        #
        #   @return [Array<TildaRuby::Models::ProjectListItem>]
        required :result, -> { TildaRuby::Internal::Type::ArrayOf[TildaRuby::ProjectListItem] }

        # @!attribute status
        #
        #   @return [Symbol, TildaRuby::Models::ProjectListResponse::UnionMember0::Status]
        required :status, enum: -> { TildaRuby::Models::ProjectListResponse::UnionMember0::Status }

        # @!method initialize(result:, status:)
        #   @param result [Array<TildaRuby::Models::ProjectListItem>]
        #   @param status [Symbol, TildaRuby::Models::ProjectListResponse::UnionMember0::Status]

        # @see TildaRuby::Models::ProjectListResponse::UnionMember0#status
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
        #   @return [Symbol, TildaRuby::Models::ProjectListResponse::ErrorResponse::Status]
        required :status, enum: -> { TildaRuby::Models::ProjectListResponse::ErrorResponse::Status }

        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!method initialize(status:, message: nil)
        #   @param status [Symbol, TildaRuby::Models::ProjectListResponse::ErrorResponse::Status]
        #   @param message [String]

        # @see TildaRuby::Models::ProjectListResponse::ErrorResponse#status
        module Status
          extend TildaRuby::Internal::Type::Enum

          ERROR = :ERROR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(TildaRuby::Models::ProjectListResponse::UnionMember0, TildaRuby::Models::ProjectListResponse::ErrorResponse)]
    end
  end
end
