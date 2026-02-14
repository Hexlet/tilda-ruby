# frozen_string_literal: true

require_relative "../test_helper"

class TildaRuby::Test::Resources::GetpageexportTest < TildaRuby::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response = @tilda.getpageexport.retrieve(pageid: "pageid")

    assert_pattern do
      response => TildaRuby::Models::GetpageexportRetrieveResponse
    end

    assert_pattern do
      case response
      in TildaRuby::Models::GetpageexportRetrieveResponse::UnionMember0
      in TildaRuby::Error
      end
    end
  end
end
