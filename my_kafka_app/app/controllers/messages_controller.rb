class MessagesController < ApplicationController
  def create
    # payload = { action: 'created', todo: params[:message]}.to_json
    payload = { message: params[:message] }.to_json

    KarafkaApp.producer.produce_sync(
      topic: :my_topic,
      payload: payload
    )
    render plain: "Message sent to Kafka!"
  end
end