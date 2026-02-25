# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
require "English"
require "base64"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "openssl"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) &&
   caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "tilda_ruby/version"
require_relative "tilda_ruby/internal/util"
require_relative "tilda_ruby/internal/type/converter"
require_relative "tilda_ruby/internal/type/unknown"
require_relative "tilda_ruby/internal/type/boolean"
require_relative "tilda_ruby/internal/type/file_input"
require_relative "tilda_ruby/internal/type/enum"
require_relative "tilda_ruby/internal/type/union"
require_relative "tilda_ruby/internal/type/array_of"
require_relative "tilda_ruby/internal/type/hash_of"
require_relative "tilda_ruby/internal/type/base_model"
require_relative "tilda_ruby/internal/type/base_page"
require_relative "tilda_ruby/internal/type/request_parameters"
require_relative "tilda_ruby/internal"
require_relative "tilda_ruby/request_options"
require_relative "tilda_ruby/file_part"
require_relative "tilda_ruby/errors"
require_relative "tilda_ruby/internal/transport/base_client"
require_relative "tilda_ruby/internal/transport/pooled_net_requester"
require_relative "tilda_ruby/client"
require_relative "tilda_ruby/models/css_asset"
require_relative "tilda_ruby/models/export_retrieve_full_params"
require_relative "tilda_ruby/models/export_retrieve_full_response"
require_relative "tilda_ruby/models/export_retrieve_params"
require_relative "tilda_ruby/models/export_retrieve_response"
require_relative "tilda_ruby/models/image_mapping"
require_relative "tilda_ruby/models/js_asset"
require_relative "tilda_ruby/models/page_body"
require_relative "tilda_ruby/models/page_export_body"
require_relative "tilda_ruby/models/page_export_full"
require_relative "tilda_ruby/models/page_full"
require_relative "tilda_ruby/models/page_list_params"
require_relative "tilda_ruby/models/page_list_response"
require_relative "tilda_ruby/models/page_retrieve_full_params"
require_relative "tilda_ruby/models/page_retrieve_full_response"
require_relative "tilda_ruby/models/page_retrieve_params"
require_relative "tilda_ruby/models/page_retrieve_response"
require_relative "tilda_ruby/models/page_summary"
require_relative "tilda_ruby/models/project_info"
require_relative "tilda_ruby/models/project_list_item"
require_relative "tilda_ruby/models/project_list_params"
require_relative "tilda_ruby/models/project_list_response"
require_relative "tilda_ruby/models/project_retrieve_params"
require_relative "tilda_ruby/models/project_retrieve_response"
require_relative "tilda_ruby/models"
require_relative "tilda_ruby/resources/export"
require_relative "tilda_ruby/resources/pages"
require_relative "tilda_ruby/resources/projects"
