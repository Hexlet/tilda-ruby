# frozen_string_literal: true

module Tilda
  module Models
    # @see Tilda::Resources::Getpageslist#retrieve
    class GetpageslistRetrieveParams < Tilda::Internal::Type::BaseModel
      extend Tilda::Internal::Type::RequestParameters::Converter
      include Tilda::Internal::Type::RequestParameters

      # @!attribute projectid
      #
      #   @return [String]
      required :projectid, String

      # @!method initialize(projectid:, request_options: {})
      #   @param projectid [String]
      #   @param request_options [Tilda::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
