Rails.application.routes.draw do

  scope 'v0' do
    devise_for :users, controllers: { sessions: 'v0/users/sessions', registrations: 'v0/users/registrations' }
  end

  namespace 'v0' do
    resources :books
  end
end
