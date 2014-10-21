Rails.application.routes.draw do
  devise_for :admins
  root 'visitors#index'
end
