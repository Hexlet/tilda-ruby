# typed: strong

module TildaRuby
  module Models
    class PageExportBody < TildaRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(TildaRuby::PageExportBody, TildaRuby::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :alias_

      sig { returns(String) }
      attr_accessor :date

      sig { returns(String) }
      attr_accessor :descr

      sig { returns(String) }
      attr_accessor :featureimg

      sig { returns(String) }
      attr_accessor :filename

      sig { returns(String) }
      attr_accessor :html

      sig { returns(String) }
      attr_accessor :img

      sig { returns(String) }
      attr_accessor :projectid

      sig { returns(String) }
      attr_accessor :published

      sig { returns(String) }
      attr_accessor :sort

      sig { returns(String) }
      attr_accessor :title

      sig { returns(T.nilable(T::Array[TildaRuby::CssAsset])) }
      attr_reader :css

      sig { params(css: T::Array[TildaRuby::CssAsset::OrHash]).void }
      attr_writer :css

      sig { returns(T.nilable(T::Array[TildaRuby::ImageMapping])) }
      attr_reader :images

      sig { params(images: T::Array[TildaRuby::ImageMapping::OrHash]).void }
      attr_writer :images

      sig { returns(T.nilable(T::Array[TildaRuby::JsAsset])) }
      attr_reader :js

      sig { params(js: T::Array[TildaRuby::JsAsset::OrHash]).void }
      attr_writer :js

      sig do
        params(
          id: String,
          alias_: String,
          date: String,
          descr: String,
          featureimg: String,
          filename: String,
          html: String,
          img: String,
          projectid: String,
          published: String,
          sort: String,
          title: String,
          css: T::Array[TildaRuby::CssAsset::OrHash],
          images: T::Array[TildaRuby::ImageMapping::OrHash],
          js: T::Array[TildaRuby::JsAsset::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        alias_:,
        date:,
        descr:,
        featureimg:,
        filename:,
        html:,
        img:,
        projectid:,
        published:,
        sort:,
        title:,
        css: nil,
        images: nil,
        js: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            alias_: String,
            date: String,
            descr: String,
            featureimg: String,
            filename: String,
            html: String,
            img: String,
            projectid: String,
            published: String,
            sort: String,
            title: String,
            css: T::Array[TildaRuby::CssAsset],
            images: T::Array[TildaRuby::ImageMapping],
            js: T::Array[TildaRuby::JsAsset]
          }
        )
      end
      def to_hash
      end
    end
  end
end
