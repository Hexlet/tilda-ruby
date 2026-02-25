# frozen_string_literal: true

require_relative "../test_helper"

class TildaRuby::Test::Resources::ExportTest < TildaRuby::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @tilda.export.retrieve(pageid: "pageid")

    assert_pattern do
      response => TildaRuby::Models::ExportRetrieveResponse
    end

    assert_pattern do
      case response
      in TildaRuby::Models::ExportRetrieveResponse::UnionMember0
      in TildaRuby::Models::ExportRetrieveResponse::ErrorResponse
      end
    end
  end

  def test_retrieve_full_required_params
    skip("Mock server tests are disabled")

    response = @tilda.export.retrieve_full(pageid: "pageid")

    assert_pattern do
      response => TildaRuby::Models::ExportRetrieveFullResponse
    end

    assert_pattern do
      case response
      in TildaRuby::Models::ExportRetrieveFullResponse::UnionMember0
      in TildaRuby::Models::ExportRetrieveFullResponse::ErrorResponse
      end
    end
  end
end
