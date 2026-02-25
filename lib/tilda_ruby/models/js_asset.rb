# frozen_string_literal: true

module TildaRuby
  module Models
    class JsAsset < TildaRuby::Internal::Type::BaseModel
      # @!attribute from
      #
      #   @return [String]
      required :from, String

      # @!attribute to
      #
      #   @return [String]
      required :to, String

      # @!attribute attrs
      #
      #   @return [Array<String>, nil]
      optional :attrs, TildaRuby::Internal::Type::ArrayOf[String]

      # @!method initialize(from:, to:, attrs: nil)
      #   @param from [String]
      #   @param to [String]
      #   @param attrs [Array<String>]
    end
  end
end
