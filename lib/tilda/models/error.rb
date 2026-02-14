# frozen_string_literal: true

module Tilda
  module Models
    class Error < Tilda::Internal::Type::BaseModel
      # @!attribute status
      #
      #   @return [Symbol, Tilda::Models::Error::Status]
      required :status, enum: -> { Tilda::Error::Status }

      # @!attribute message
      #
      #   @return [String, nil]
      optional :message, String

      # @!method initialize(status:, message: nil)
      #   @param status [Symbol, Tilda::Models::Error::Status]
      #   @param message [String]

      # @see Tilda::Models::Error#status
      module Status
        extend Tilda::Internal::Type::Enum

        ERROR = :ERROR

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
