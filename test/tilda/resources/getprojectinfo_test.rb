# frozen_string_literal: true

require_relative "../test_helper"

class Tilda::Test::Resources::GetprojectinfoTest < Tilda::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response = @tilda.getprojectinfo.retrieve(projectid: "projectid")

    assert_pattern do
      response => Tilda::Models::GetprojectinfoRetrieveResponse
    end

    assert_pattern do
      case response
      in Tilda::Models::GetprojectinfoRetrieveResponse::UnionMember0
      in Tilda::Error
      end
    end
  end
end
