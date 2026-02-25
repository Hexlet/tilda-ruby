# frozen_string_literal: true

require_relative "../test_helper"

class TildaRuby::Test::Resources::ProjectsTest < TildaRuby::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @tilda.projects.retrieve(projectid: "projectid")

    assert_pattern do
      response => TildaRuby::Models::ProjectRetrieveResponse
    end

    assert_pattern do
      case response
      in TildaRuby::Models::ProjectRetrieveResponse::UnionMember0
      in TildaRuby::Models::ProjectRetrieveResponse::ErrorResponse
      end
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @tilda.projects.list

    assert_pattern do
      response => TildaRuby::Models::ProjectListResponse
    end

    assert_pattern do
      case response
      in TildaRuby::Models::ProjectListResponse::UnionMember0
      in TildaRuby::Models::ProjectListResponse::ErrorResponse
      end
    end
  end
end
