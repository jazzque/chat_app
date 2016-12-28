SimpleChat::Application.routes.draw do
  mount ActionCable.server => '/cable'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  namespace :client, path: '' do
    root to: 'welcome#index'
  end

  scope :admin do
    root to: 'users#index'
  end
end
