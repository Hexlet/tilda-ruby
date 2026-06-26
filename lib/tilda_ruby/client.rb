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

    # Tilda API public key
    # @return [String, nil]
    attr_reader :publickey

    # Tilda API secret key
    # @return [String, nil]
    attr_reader :secretkey

    # @return [TildaRuby::Resources::Projects]
    attr_reader :projects

    # @return [TildaRuby::Resources::Pages]
    attr_reader :pages

    # @return [TildaRuby::Resources::Export]
    attr_reader :export

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_query
      {**public_key_auth, **secret_key_auth}
    end

    # @api private
    #
    # @return [Hash{String=>String}]
    private def public_key_auth
      {"publickey" => @publickey}
    end

    # @api private
    #
    # @return [Hash{String=>String}]
    private def secret_key_auth
      {"secretkey" => @secretkey}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param publickey [String, nil] Tilda API public key
    #
    # @param secretkey [String, nil] Tilda API secret key
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
      publickey: nil,
      secretkey: nil,
      base_url: ENV["TILDA_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.tildacdn.info"

      headers = {}
      custom_headers_env = ENV["TILDA_CUSTOM_HEADERS"]
      unless custom_headers_env.nil?
        parsed = {}
        custom_headers_env.split("\n").each do |line|
          colon = line.index(":")
          unless colon.nil?
            parsed[line[0...colon].strip] = line[(colon + 1)..].strip
          end
        end
        headers = parsed.merge(headers)
      end

      @publickey = publickey&.to_s
      @secretkey = secretkey&.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay,
        headers: headers
      )

      @projects = TildaRuby::Resources::Projects.new(client: self)
      @pages = TildaRuby::Resources::Pages.new(client: self)
      @export = TildaRuby::Resources::Export.new(client: self)
    end
  end
end
