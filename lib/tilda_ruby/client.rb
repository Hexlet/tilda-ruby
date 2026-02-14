# frozen_string_literal: true

module TildaRuby
  class Client < TildaRuby::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # @return [String, nil]
    attr_reader :api_key

    # @return [TildaRuby::Resources::Getpage]
    attr_reader :getpage

    # @return [TildaRuby::Resources::Getpageexport]
    attr_reader :getpageexport

    # @return [TildaRuby::Resources::Getpagefull]
    attr_reader :getpagefull

    # @return [TildaRuby::Resources::Getpagefullexport]
    attr_reader :getpagefullexport

    # @return [TildaRuby::Resources::Getpageslist]
    attr_reader :getpageslist

    # @return [TildaRuby::Resources::Getprojectinfo]
    attr_reader :getprojectinfo

    # @return [TildaRuby::Resources::Getprojectslist]
    attr_reader :getprojectslist

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      return {} if @api_key.nil?

      {"authorization" => "Bearer #{@api_key}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] Defaults to `ENV["TILDA_API_KEY"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["TILDA_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      api_key: ENV["TILDA_API_KEY"],
      base_url: ENV["TILDA_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.tildacdn.info"

      @api_key = api_key&.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @getpage = TildaRuby::Resources::Getpage.new(client: self)
      @getpageexport = TildaRuby::Resources::Getpageexport.new(client: self)
      @getpagefull = TildaRuby::Resources::Getpagefull.new(client: self)
      @getpagefullexport = TildaRuby::Resources::Getpagefullexport.new(client: self)
      @getpageslist = TildaRuby::Resources::Getpageslist.new(client: self)
      @getprojectinfo = TildaRuby::Resources::Getprojectinfo.new(client: self)
      @getprojectslist = TildaRuby::Resources::Getprojectslist.new(client: self)
    end
  end
end
