Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'ask', to: 'questions#ask'
  get 'answer', to: 'questions#answer'
  # post 'questions', to: 'questions#create'
  # post 'ask', to: 'ask#create'
end
