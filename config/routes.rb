Rails.application.routes.draw do
  root 'characters#show'

  post 'sign_in', to: 'users#sign_in'
  get 'sign_out', to: 'users#sign_out'
  post 'create_user', to: 'users#create'
  get 'register', to: 'users#register'

  get 'sign_in', to: 'users#sign_in'
  post 'signed_in', to: 'users#signed_in'
  get 'sign_out', to: 'users#sign_out'
  post 'create_user', to: 'users#create'
  get 'register', to: 'users#register'

  resources :users do
  end

  get 'work', to: 'works#index'
  get 'houses', to: 'houses#index'
  get 'thief', to: 'thiefs#index'
  get 'character', to: 'characters#show'

  get 'receive_money', to: 'works#receive_money'
  get 'level_up_work', to: 'works#level_up_work'
  get 'take_a_job', to: 'works#take_a_job'
end
