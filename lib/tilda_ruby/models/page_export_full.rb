# frozen_string_literal: true

module TildaRuby
  module Models
    class PageExportFull < TildaRuby::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute alias_
      #
      #   @return [String]
      required :alias_, String, api_name: :alias

      # @!attribute date
      #
      #   @return [String]
      required :date, String

      # @!attribute descr
      #
      #   @return [String]
      required :descr, String

      # @!attribute featureimg
      #
      #   @return [String]
      required :featureimg, String

      # @!attribute filename
      #
      #   @return [String]
      required :filename, String

      # @!attribute html
      #
      #   @return [String]
      required :html, String

      # @!attribute img
      #
      #   @return [String]
      required :img, String

      # @!attribute projectid
      #
      #   @return [String]
      required :projectid, String

      # @!attribute published
      #
      #   @return [String]
      required :published, String

      # @!attribute sort
      #
      #   @return [String]
      required :sort, String

      # @!attribute title
      #
      #   @return [String]
      required :title, String

      # @!attribute images
      #
      #   @return [Array<TildaRuby::Models::ImageMapping>, nil]
      optional :images, -> { TildaRuby::Internal::Type::ArrayOf[TildaRuby::ImageMapping] }

      # @!method initialize(id:, alias_:, date:, descr:, featureimg:, filename:, html:, img:, projectid:, published:, sort:, title:, images: nil)
      #   @param id [String]
      #   @param alias_ [String]
      #   @param date [String]
      #   @param descr [String]
      #   @param featureimg [String]
      #   @param filename [String]
      #   @param html [String]
      #   @param img [String]
      #   @param projectid [String]
      #   @param published [String]
      #   @param sort [String]
      #   @param title [String]
      #   @param images [Array<TildaRuby::Models::ImageMapping>]
    end
  end
end
