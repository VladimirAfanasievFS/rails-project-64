# frozen_string_literal: true

Sentry.init do |config|
  config.dsn = 'https://959f5d30e2ac4d76a09677906c3f303a@o4505574984777728.ingest.sentry.io/4505574989430784'
  config.breadcrumbs_logger = %i[active_support_logger http_logger]

  # Set traces_sample_rate to 1.0 to capture 100%
  # of transactions for performance monitoring.
  # We recommend adjusting this value in production.
  config.traces_sample_rate = 1.0
  # or
  config.traces_sampler = lambda do |_context|
    true
  end
end
