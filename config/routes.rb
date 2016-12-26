SimpleChat::Application.routes.draw do

  namespace :client, path: '' do
    devise_for :users
    root to: 'welcome#index'
  end

  scope :admin do
    root to: 'users#index'
  end
end
