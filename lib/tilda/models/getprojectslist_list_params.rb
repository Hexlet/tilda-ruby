# frozen_string_literal: true

module Tilda
  module Models
    # @see Tilda::Resources::Getprojectslist#list
    class GetprojectslistListParams < Tilda::Internal::Type::BaseModel
      extend Tilda::Internal::Type::RequestParameters::Converter
      include Tilda::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Tilda::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
