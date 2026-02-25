# frozen_string_literal: true

module TildaRuby
  module Models
    class ProjectListItem < TildaRuby::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute descr
      #
      #   @return [String]
      required :descr, String

      # @!attribute title
      #
      #   @return [String]
      required :title, String

      # @!method initialize(id:, descr:, title:)
      #   @param id [String]
      #   @param descr [String]
      #   @param title [String]
    end
  end
end
