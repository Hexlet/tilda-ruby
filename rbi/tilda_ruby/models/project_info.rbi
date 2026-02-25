# typed: strong

module TildaRuby
  module Models
    class ProjectInfo < TildaRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(TildaRuby::ProjectInfo, TildaRuby::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :customcsstext

      sig { returns(String) }
      attr_accessor :customdomain

      sig { returns(String) }
      attr_accessor :descr

      sig { returns(String) }
      attr_accessor :export_csspath

      sig { returns(String) }
      attr_accessor :export_imgpath

      sig { returns(String) }
      attr_accessor :export_jspath

      sig { returns(String) }
      attr_accessor :favicon

      sig { returns(String) }
      attr_accessor :indexpageid

      sig { returns(String) }
      attr_accessor :page404id

      sig { returns(String) }
      attr_accessor :title

      sig { returns(T.nilable(T::Array[TildaRuby::ImageMapping])) }
      attr_reader :images

      sig { params(images: T::Array[TildaRuby::ImageMapping::OrHash]).void }
      attr_writer :images

      sig do
        params(
          id: String,
          customcsstext: String,
          customdomain: String,
          descr: String,
          export_csspath: String,
          export_imgpath: String,
          export_jspath: String,
          favicon: String,
          indexpageid: String,
          page404id: String,
          title: String,
          images: T::Array[TildaRuby::ImageMapping::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        customcsstext:,
        customdomain:,
        descr:,
        export_csspath:,
        export_imgpath:,
        export_jspath:,
        favicon:,
        indexpageid:,
        page404id:,
        title:,
        images: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            customcsstext: String,
            customdomain: String,
            descr: String,
            export_csspath: String,
            export_imgpath: String,
            export_jspath: String,
            favicon: String,
            indexpageid: String,
            page404id: String,
            title: String,
            images: T::Array[TildaRuby::ImageMapping]
          }
        )
      end
      def to_hash
      end
    end
  end
end
