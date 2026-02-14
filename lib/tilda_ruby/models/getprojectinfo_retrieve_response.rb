# frozen_string_literal: true

module TildaRuby
  module Models
    # @see TildaRuby::Resources::Getprojectinfo#retrieve
    module GetprojectinfoRetrieveResponse
      extend TildaRuby::Internal::Type::Union

      variant -> { TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0 }

      variant -> { TildaRuby::Error }

      class UnionMember0 < TildaRuby::Internal::Type::BaseModel
        # @!attribute result
        #
        #   @return [TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0::Result]
        required :result, -> { TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0::Result }

        # @!attribute status
        #
        #   @return [Symbol, TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0::Status]
        required :status, enum: -> { TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0::Status }

        # @!method initialize(result:, status:)
        #   @param result [TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0::Result]
        #   @param status [Symbol, TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0::Status]

        # @see TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0#result
        class Result < TildaRuby::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute customcsstext
          #
          #   @return [String]
          required :customcsstext, String

          # @!attribute customdomain
          #
          #   @return [String]
          required :customdomain, String

          # @!attribute descr
          #
          #   @return [String]
          required :descr, String

          # @!attribute export_csspath
          #
          #   @return [String]
          required :export_csspath, String

          # @!attribute export_imgpath
          #
          #   @return [String]
          required :export_imgpath, String

          # @!attribute export_jspath
          #
          #   @return [String]
          required :export_jspath, String

          # @!attribute favicon
          #
          #   @return [String]
          required :favicon, String

          # @!attribute indexpageid
          #
          #   @return [String]
          required :indexpageid, String

          # @!attribute page404id
          #
          #   @return [String]
          required :page404id, String

          # @!attribute title
          #
          #   @return [String]
          required :title, String

          # @!attribute images
          #
          #   @return [Array<TildaRuby::Models::ImageMapping>, nil]
          optional :images, -> { TildaRuby::Internal::Type::ArrayOf[TildaRuby::ImageMapping] }

          # @!method initialize(id:, customcsstext:, customdomain:, descr:, export_csspath:, export_imgpath:, export_jspath:, favicon:, indexpageid:, page404id:, title:, images: nil)
          #   @param id [String]
          #   @param customcsstext [String]
          #   @param customdomain [String]
          #   @param descr [String]
          #   @param export_csspath [String]
          #   @param export_imgpath [String]
          #   @param export_jspath [String]
          #   @param favicon [String]
          #   @param indexpageid [String]
          #   @param page404id [String]
          #   @param title [String]
          #   @param images [Array<TildaRuby::Models::ImageMapping>]
        end

        # @see TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0#status
        module Status
          extend TildaRuby::Internal::Type::Enum

          FOUND = :FOUND

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0, TildaRuby::Models::Error)]
    end
  end
end
