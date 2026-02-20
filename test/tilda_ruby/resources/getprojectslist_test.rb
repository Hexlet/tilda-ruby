# frozen_string_literal: true

require_relative "../test_helper"

class TildaRuby::Test::Resources::GetprojectslistTest < TildaRuby::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @tilda.getprojectslist.list

    assert_pattern do
      response => TildaRuby::Models::GetprojectslistListResponse
    end

    assert_pattern do
      case response
      in TildaRuby::Models::GetprojectslistListResponse::UnionMember0
      in TildaRuby::Error
      end
    end
  end
end
