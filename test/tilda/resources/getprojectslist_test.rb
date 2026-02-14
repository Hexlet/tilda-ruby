# frozen_string_literal: true

require_relative "../test_helper"

class Tilda::Test::Resources::GetprojectslistTest < Tilda::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @tilda.getprojectslist.list

    assert_pattern do
      response => Tilda::Models::GetprojectslistListResponse
    end

    assert_pattern do
      case response
      in Tilda::Models::GetprojectslistListResponse::UnionMember0
      in Tilda::Error
      end
    end
  end
end
