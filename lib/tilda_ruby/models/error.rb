# frozen_string_literal: true

module TildaRuby
  module Models
    class Error < TildaRuby::Internal::Type::BaseModel
      # @!attribute status
      #
      #   @return [Symbol, TildaRuby::Models::Error::Status]
      required :status, enum: -> { TildaRuby::Error::Status }

      # @!attribute message
      #
      #   @return [String, nil]
      optional :message, String

      # @!method initialize(status:, message: nil)
      #   @param status [Symbol, TildaRuby::Models::Error::Status]
      #   @param message [String]

      # @see TildaRuby::Models::Error#status
      module Status
        extend TildaRuby::Internal::Type::Enum

        ERROR = :ERROR

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
