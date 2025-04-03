require 'karafka/web'

Rails.application.routes.draw do
  mount Karafka::Web::App, at: '/karafka'
  post '/messages', to: 'messages#create'
end