Rails.application.routes.draw do
  get '/xyz' => 'welcome#xyz'
  get '/entries' => 'entries#index'
  get '/entries/:id' => 'entries#show', as: :entry

  root 'entries#index'
end
