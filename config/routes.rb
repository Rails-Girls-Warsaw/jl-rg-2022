Rails.application.routes.draw do
  get '/xyz' => 'welcome#xyz'

  resources :entries

  root 'entries#index'
end
