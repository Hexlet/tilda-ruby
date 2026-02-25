# typed: strong

module TildaRuby
  module Models
    class PageExportFull < TildaRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(TildaRuby::PageExportFull, TildaRuby::Internal::AnyHash)
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

      sig { returns(T.nilable(T::Array[TildaRuby::ImageMapping])) }
      attr_reader :images

      sig { params(images: T::Array[TildaRuby::ImageMapping::OrHash]).void }
      attr_writer :images

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
          images: T::Array[TildaRuby::ImageMapping::OrHash]
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
        images: nil
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
            images: T::Array[TildaRuby::ImageMapping]
          }
        )
      end
      def to_hash
      end
    end
  end
end
