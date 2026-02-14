# frozen_string_literal: true

module Tilda
  module Models
    # @see Tilda::Resources::Getprojectslist#list
    module GetprojectslistListResponse
      extend Tilda::Internal::Type::Union

      variant -> { Tilda::Models::GetprojectslistListResponse::UnionMember0 }

      variant -> { Tilda::Error }

      class UnionMember0 < Tilda::Internal::Type::BaseModel
        # @!attribute result
        #
        #   @return [Array<Tilda::Models::GetprojectslistListResponse::UnionMember0::Result>]
        required :result,
                 -> { Tilda::Internal::Type::ArrayOf[Tilda::Models::GetprojectslistListResponse::UnionMember0::Result] }

        # @!attribute status
        #
        #   @return [Symbol, Tilda::Models::GetprojectslistListResponse::UnionMember0::Status]
        required :status, enum: -> { Tilda::Models::GetprojectslistListResponse::UnionMember0::Status }

        # @!method initialize(result:, status:)
        #   @param result [Array<Tilda::Models::GetprojectslistListResponse::UnionMember0::Result>]
        #   @param status [Symbol, Tilda::Models::GetprojectslistListResponse::UnionMember0::Status]

        class Result < Tilda::Internal::Type::BaseModel
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

        # @see Tilda::Models::GetprojectslistListResponse::UnionMember0#status
        module Status
          extend Tilda::Internal::Type::Enum

          FOUND = :FOUND

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(Tilda::Models::GetprojectslistListResponse::UnionMember0, Tilda::Models::Error)]
    end
  end
end
