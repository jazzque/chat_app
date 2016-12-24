BeersMap::Application.routes.draw do
  namespace :client, path: '' do
    root to: 'welcome#index'
  end

  scope :admin do
    root to: 'users#index'
  end
end
