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
require_relative "tilda/version"
require_relative "tilda/internal/util"
require_relative "tilda/internal/type/converter"
require_relative "tilda/internal/type/unknown"
require_relative "tilda/internal/type/boolean"
require_relative "tilda/internal/type/file_input"
require_relative "tilda/internal/type/enum"
require_relative "tilda/internal/type/union"
require_relative "tilda/internal/type/array_of"
require_relative "tilda/internal/type/hash_of"
require_relative "tilda/internal/type/base_model"
require_relative "tilda/internal/type/base_page"
require_relative "tilda/internal/type/request_parameters"
require_relative "tilda/internal"
require_relative "tilda/request_options"
require_relative "tilda/file_part"
require_relative "tilda/errors"
require_relative "tilda/internal/transport/base_client"
require_relative "tilda/internal/transport/pooled_net_requester"
require_relative "tilda/client"
require_relative "tilda/models/error"
require_relative "tilda/models/getpageexport_retrieve_params"
require_relative "tilda/models/getpageexport_retrieve_response"
require_relative "tilda/models/getpagefullexport_retrieve_params"
require_relative "tilda/models/getpagefullexport_retrieve_response"
require_relative "tilda/models/getpagefull_retrieve_params"
require_relative "tilda/models/getpagefull_retrieve_response"
require_relative "tilda/models/getpage_retrieve_params"
require_relative "tilda/models/getpage_retrieve_response"
require_relative "tilda/models/getpageslist_retrieve_params"
require_relative "tilda/models/getpageslist_retrieve_response"
require_relative "tilda/models/getprojectinfo_retrieve_params"
require_relative "tilda/models/getprojectinfo_retrieve_response"
require_relative "tilda/models/getprojectslist_list_params"
require_relative "tilda/models/getprojectslist_list_response"
require_relative "tilda/models/image_mapping"
require_relative "tilda/models"
require_relative "tilda/resources/getpage"
require_relative "tilda/resources/getpageexport"
require_relative "tilda/resources/getpagefull"
require_relative "tilda/resources/getpagefullexport"
require_relative "tilda/resources/getpageslist"
require_relative "tilda/resources/getprojectinfo"
require_relative "tilda/resources/getprojectslist"
