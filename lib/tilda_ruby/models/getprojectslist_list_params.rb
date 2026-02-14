# frozen_string_literal: true

module TildaRuby
  module Models
    # @see TildaRuby::Resources::Getprojectslist#list
    class GetprojectslistListParams < TildaRuby::Internal::Type::BaseModel
      extend TildaRuby::Internal::Type::RequestParameters::Converter
      include TildaRuby::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [TildaRuby::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
