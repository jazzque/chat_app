SimpleChat::Application.routes.draw do

  namespace :client, path: '' do
    root to: 'welcome#index'
  end

  scope :admin do
    devise_for :users

    root to: 'users#index'
  end
end
