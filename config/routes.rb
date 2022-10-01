Rails.application.routes.draw do
  get '/xyz' => 'welcome#xyz'
  get '/entries' => 'entries#index'
end
