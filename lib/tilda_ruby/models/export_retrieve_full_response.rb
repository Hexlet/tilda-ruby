# frozen_string_literal: true

module TildaRuby
  module Models
    # @see TildaRuby::Resources::Export#retrieve_full
    module ExportRetrieveFullResponse
      extend TildaRuby::Internal::Type::Union

      variant -> { TildaRuby::Models::ExportRetrieveFullResponse::UnionMember0 }

      variant -> { TildaRuby::Models::ExportRetrieveFullResponse::ErrorResponse }

      class UnionMember0 < TildaRuby::Internal::Type::BaseModel
        # @!attribute result
        #
        #   @return [TildaRuby::Models::PageExportFull]
        required :result, -> { TildaRuby::PageExportFull }

        # @!attribute status
        #
        #   @return [Symbol, TildaRuby::Models::ExportRetrieveFullResponse::UnionMember0::Status]
        required :status, enum: -> { TildaRuby::Models::ExportRetrieveFullResponse::UnionMember0::Status }

        # @!method initialize(result:, status:)
        #   @param result [TildaRuby::Models::PageExportFull]
        #   @param status [Symbol, TildaRuby::Models::ExportRetrieveFullResponse::UnionMember0::Status]

        # @see TildaRuby::Models::ExportRetrieveFullResponse::UnionMember0#status
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
        #   @return [Symbol, TildaRuby::Models::ExportRetrieveFullResponse::ErrorResponse::Status]
        required :status, enum: -> { TildaRuby::Models::ExportRetrieveFullResponse::ErrorResponse::Status }

        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!method initialize(status:, message: nil)
        #   @param status [Symbol, TildaRuby::Models::ExportRetrieveFullResponse::ErrorResponse::Status]
        #   @param message [String]

        # @see TildaRuby::Models::ExportRetrieveFullResponse::ErrorResponse#status
        module Status
          extend TildaRuby::Internal::Type::Enum

          ERROR = :ERROR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(TildaRuby::Models::ExportRetrieveFullResponse::UnionMember0, TildaRuby::Models::ExportRetrieveFullResponse::ErrorResponse)]
    end
  end
end
