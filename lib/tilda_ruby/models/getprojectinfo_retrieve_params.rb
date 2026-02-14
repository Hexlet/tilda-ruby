# frozen_string_literal: true

module TildaRuby
  module Models
    # @see TildaRuby::Resources::Getprojectinfo#retrieve
    class GetprojectinfoRetrieveParams < TildaRuby::Internal::Type::BaseModel
      extend TildaRuby::Internal::Type::RequestParameters::Converter
      include TildaRuby::Internal::Type::RequestParameters

      # @!attribute projectid
      #
      #   @return [String]
      required :projectid, String

      # @!method initialize(projectid:, request_options: {})
      #   @param projectid [String]
      #   @param request_options [TildaRuby::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
