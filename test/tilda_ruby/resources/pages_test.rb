# frozen_string_literal: true

require_relative "../test_helper"

class TildaRuby::Test::Resources::PagesTest < TildaRuby::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @tilda.pages.retrieve(pageid: "pageid")

    assert_pattern do
      response => TildaRuby::Models::PageRetrieveResponse
    end

    assert_pattern do
      case response
      in TildaRuby::Models::PageRetrieveResponse::UnionMember0
      in TildaRuby::Models::PageRetrieveResponse::ErrorResponse
      end
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @tilda.pages.list(projectid: "projectid")

    assert_pattern do
      response => TildaRuby::Models::PageListResponse
    end

    assert_pattern do
      case response
      in TildaRuby::Models::PageListResponse::UnionMember0
      in TildaRuby::Models::PageListResponse::ErrorResponse
      end
    end
  end

  def test_retrieve_full_required_params
    skip("Mock server tests are disabled")

    response = @tilda.pages.retrieve_full(pageid: "pageid")

    assert_pattern do
      response => TildaRuby::Models::PageRetrieveFullResponse
    end

    assert_pattern do
      case response
      in TildaRuby::Models::PageRetrieveFullResponse::UnionMember0
      in TildaRuby::Models::PageRetrieveFullResponse::ErrorResponse
      end
    end
  end
end
