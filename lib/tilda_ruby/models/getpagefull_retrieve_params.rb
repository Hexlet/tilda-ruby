# frozen_string_literal: true

module TildaRuby
  module Models
    # @see TildaRuby::Resources::Getpagefull#retrieve
    class GetpagefullRetrieveParams < TildaRuby::Internal::Type::BaseModel
      extend TildaRuby::Internal::Type::RequestParameters::Converter
      include TildaRuby::Internal::Type::RequestParameters

      # @!attribute pageid
      #
      #   @return [String]
      required :pageid, String

      # @!method initialize(pageid:, request_options: {})
      #   @param pageid [String]
      #   @param request_options [TildaRuby::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
