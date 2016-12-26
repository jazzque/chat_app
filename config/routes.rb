SimpleChat::Application.routes.draw do
  devise_for :users
  namespace :client, path: '' do
    root to: 'welcome#index'
  end

  scope :admin do
    root to: 'users#index'
  end
end
