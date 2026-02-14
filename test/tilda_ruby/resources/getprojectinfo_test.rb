# frozen_string_literal: true

require_relative "../test_helper"

class TildaRuby::Test::Resources::GetprojectinfoTest < TildaRuby::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response = @tilda.getprojectinfo.retrieve(projectid: "projectid")

    assert_pattern do
      response => TildaRuby::Models::GetprojectinfoRetrieveResponse
    end

    assert_pattern do
      case response
      in TildaRuby::Models::GetprojectinfoRetrieveResponse::UnionMember0
      in TildaRuby::Error
      end
    end
  end
end
