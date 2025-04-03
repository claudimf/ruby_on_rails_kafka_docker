# frozen_string_literal: true

class MessagesConsumer < Karafka::BaseConsumer
  def consume
    messages.each do |message|
      puts "\nMessage object: #{message}"
      puts "Raw message: #{message.payload}"
      puts "Topic: #{message.topic}"

      begin

        payload = message.payload
        puts "Parsed payload: #{payload}"
        puts "Message type: #{payload['todo'].class}" if payload['todo']
        puts "Message: #{payload['message']}"
      
      rescue => e
        puts "Generic Error: #{e.message}"
        puts e.backtrace.join("\n")
      end
    end
  end
end