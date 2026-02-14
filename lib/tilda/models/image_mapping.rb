# frozen_string_literal: true

module Tilda
  module Models
    class ImageMapping < Tilda::Internal::Type::BaseModel
      # @!attribute from
      #
      #   @return [String]
      required :from, String

      # @!attribute to
      #
      #   @return [String]
      required :to, String

      # @!method initialize(from:, to:)
      #   @param from [String]
      #   @param to [String]
    end
  end
end
