# frozen_string_literal: true

module Tilda
  module Models
    # @see Tilda::Resources::Getpage#retrieve
    class GetpageRetrieveParams < Tilda::Internal::Type::BaseModel
      extend Tilda::Internal::Type::RequestParameters::Converter
      include Tilda::Internal::Type::RequestParameters

      # @!attribute pageid
      #
      #   @return [String]
      required :pageid, String

      # @!method initialize(pageid:, request_options: {})
      #   @param pageid [String]
      #   @param request_options [Tilda::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
