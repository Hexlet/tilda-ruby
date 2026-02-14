# frozen_string_literal: true

require_relative "../test_helper"

class Tilda::Test::Resources::GetpageTest < Tilda::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response = @tilda.getpage.retrieve(pageid: "pageid")

    assert_pattern do
      response => Tilda::Models::GetpageRetrieveResponse
    end

    assert_pattern do
      case response
      in Tilda::Models::GetpageRetrieveResponse::UnionMember0
      in Tilda::Error
      end
    end
  end
end
