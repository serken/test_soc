Rails.application.routes.draw do
  root 'characters#show'

  get 'work', to: 'works#index'
  get 'houses', to: 'houses#index'
  get 'thief', to: 'thiefs#index'
  get 'character', to: 'characters#show'

  get 'receive_money', to: 'works#receive_money'
  get 'level_up_work', to: 'works#level_up_work'
  get 'take_a_job', to: 'works#take_a_job'
end
