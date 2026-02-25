# typed: strong

module TildaRuby
  module Models
    class ProjectListItem < TildaRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(TildaRuby::ProjectListItem, TildaRuby::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :descr

      sig { returns(String) }
      attr_accessor :title

      sig do
        params(id: String, descr: String, title: String).returns(
          T.attached_class
        )
      end
      def self.new(id:, descr:, title:)
      end

      sig { override.returns({ id: String, descr: String, title: String }) }
      def to_hash
      end
    end
  end
end
