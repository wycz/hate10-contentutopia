Rails.application.routes.draw do
  root 'substitutions#new'

  post '/', to: 'substitutions#create', as: :substitutions

  get '/substitutions', to: 'substitutions#index'
end
