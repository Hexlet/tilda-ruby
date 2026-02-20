# frozen_string_literal: true

require_relative "../test_helper"

class TildaRuby::Test::Resources::GetpageTest < TildaRuby::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @tilda.getpage.retrieve(pageid: "pageid")

    assert_pattern do
      response => TildaRuby::Models::GetpageRetrieveResponse
    end

    assert_pattern do
      case response
      in TildaRuby::Models::GetpageRetrieveResponse::UnionMember0
      in TildaRuby::Error
      end
    end
  end
end
