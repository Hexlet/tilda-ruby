# frozen_string_literal: true

require_relative "../test_helper"

class TildaRuby::Test::Resources::GetpagefullTest < TildaRuby::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @tilda.getpagefull.retrieve(pageid: "pageid")

    assert_pattern do
      response => TildaRuby::Models::GetpagefullRetrieveResponse
    end

    assert_pattern do
      case response
      in TildaRuby::Models::GetpagefullRetrieveResponse::UnionMember0
      in TildaRuby::Error
      end
    end
  end
end
