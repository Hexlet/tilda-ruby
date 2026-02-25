# typed: strong

module TildaRuby
  module Models
    class PageSummary < TildaRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(TildaRuby::PageSummary, TildaRuby::Internal::AnyHash)
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
      attr_accessor :img

      sig { returns(String) }
      attr_accessor :projectid

      sig { returns(String) }
      attr_accessor :published

      sig { returns(String) }
      attr_accessor :sort

      sig { returns(String) }
      attr_accessor :title

      sig do
        params(
          id: String,
          alias_: String,
          date: String,
          descr: String,
          featureimg: String,
          filename: String,
          img: String,
          projectid: String,
          published: String,
          sort: String,
          title: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        alias_:,
        date:,
        descr:,
        featureimg:,
        filename:,
        img:,
        projectid:,
        published:,
        sort:,
        title:
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
            img: String,
            projectid: String,
            published: String,
            sort: String,
            title: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
