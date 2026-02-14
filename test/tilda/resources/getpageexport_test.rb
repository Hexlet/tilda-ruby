# frozen_string_literal: true

require_relative "../test_helper"

class Tilda::Test::Resources::GetpageexportTest < Tilda::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response = @tilda.getpageexport.retrieve(pageid: "pageid")

    assert_pattern do
      response => Tilda::Models::GetpageexportRetrieveResponse
    end

    assert_pattern do
      case response
      in Tilda::Models::GetpageexportRetrieveResponse::UnionMember0
      in Tilda::Error
      end
    end
  end
end
