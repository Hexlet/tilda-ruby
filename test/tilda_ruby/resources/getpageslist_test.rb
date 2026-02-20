# frozen_string_literal: true

require_relative "../test_helper"

class TildaRuby::Test::Resources::GetpageslistTest < TildaRuby::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @tilda.getpageslist.retrieve(projectid: "projectid")

    assert_pattern do
      response => TildaRuby::Models::GetpageslistRetrieveResponse
    end

    assert_pattern do
      case response
      in TildaRuby::Models::GetpageslistRetrieveResponse::UnionMember0
      in TildaRuby::Error
      end
    end
  end
end
