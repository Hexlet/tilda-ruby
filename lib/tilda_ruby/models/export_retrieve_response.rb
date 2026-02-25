# frozen_string_literal: true

module TildaRuby
  module Models
    # @see TildaRuby::Resources::Export#retrieve
    module ExportRetrieveResponse
      extend TildaRuby::Internal::Type::Union

      variant -> { TildaRuby::Models::ExportRetrieveResponse::UnionMember0 }

      variant -> { TildaRuby::Models::ExportRetrieveResponse::ErrorResponse }

      class UnionMember0 < TildaRuby::Internal::Type::BaseModel
        # @!attribute result
        #
        #   @return [TildaRuby::Models::PageExportBody]
        required :result, -> { TildaRuby::PageExportBody }

        # @!attribute status
        #
        #   @return [Symbol, TildaRuby::Models::ExportRetrieveResponse::UnionMember0::Status]
        required :status, enum: -> { TildaRuby::Models::ExportRetrieveResponse::UnionMember0::Status }

        # @!method initialize(result:, status:)
        #   @param result [TildaRuby::Models::PageExportBody]
        #   @param status [Symbol, TildaRuby::Models::ExportRetrieveResponse::UnionMember0::Status]

        # @see TildaRuby::Models::ExportRetrieveResponse::UnionMember0#status
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
        #   @return [Symbol, TildaRuby::Models::ExportRetrieveResponse::ErrorResponse::Status]
        required :status, enum: -> { TildaRuby::Models::ExportRetrieveResponse::ErrorResponse::Status }

        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!method initialize(status:, message: nil)
        #   @param status [Symbol, TildaRuby::Models::ExportRetrieveResponse::ErrorResponse::Status]
        #   @param message [String]

        # @see TildaRuby::Models::ExportRetrieveResponse::ErrorResponse#status
        module Status
          extend TildaRuby::Internal::Type::Enum

          ERROR = :ERROR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(TildaRuby::Models::ExportRetrieveResponse::UnionMember0, TildaRuby::Models::ExportRetrieveResponse::ErrorResponse)]
    end
  end
end
