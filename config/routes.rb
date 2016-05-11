Rails.application.routes.draw do
  root 'main#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
