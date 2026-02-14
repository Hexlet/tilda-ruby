# typed: strong

module Tilda
  module Models
    class ImageMapping < Tilda::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Tilda::ImageMapping, Tilda::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :from

      sig { returns(String) }
      attr_accessor :to

      sig { params(from: String, to: String).returns(T.attached_class) }
      def self.new(from:, to:)
      end

      sig { override.returns({ from: String, to: String }) }
      def to_hash
      end
    end
  end
end
