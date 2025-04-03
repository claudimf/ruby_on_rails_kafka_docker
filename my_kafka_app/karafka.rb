# frozen_string_literal: true

class KarafkaApp < Karafka::App
  setup do |config|
    config.kafka = {
      'bootstrap.servers': ENV.fetch('KAFKA_BROKERS'),
    }
    config.client_id = 'my_kafka_app'
  end

  routes.draw do
    topic :my_topic do
      consumer MessagesConsumer
    end
  end
end

Karafka::Web.setup do |config|
  config.ui.sessions.secret = ENV.fetch('KARAFKA_SESSION_SECRET')
end

Karafka::Web.enable!

