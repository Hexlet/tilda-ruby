# typed: strong

module TildaRuby
  class Client < TildaRuby::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    # Tilda API public key
    sig { returns(T.nilable(String)) }
    attr_reader :publickey

    # Tilda API secret key
    sig { returns(T.nilable(String)) }
    attr_reader :secretkey

    sig { returns(TildaRuby::Resources::Projects) }
    attr_reader :projects

    sig { returns(TildaRuby::Resources::Pages) }
    attr_reader :pages

    sig { returns(TildaRuby::Resources::Export) }
    attr_reader :export

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_query
    end

    # @api private
    sig { returns(T::Hash[String, String]) }
    private def public_key_auth
    end

    # @api private
    sig { returns(T::Hash[String, String]) }
    private def secret_key_auth
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        publickey: T.nilable(String),
        secretkey: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # Tilda API public key
      publickey: nil,
      # Tilda API secret key
      secretkey: nil,
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["TILDA_BASE_URL"]`
      base_url: ENV["TILDA_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: TildaRuby::Client::DEFAULT_MAX_RETRIES,
      timeout: TildaRuby::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: TildaRuby::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: TildaRuby::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
