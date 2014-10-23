Rails.application.routes.draw do
  namespace :manage do
    root 'dashboard#index'
  end

  devise_for :admins, skip: :registrations
  devise_scope :admin do
    resource :registration,
      only: [:edit, :update],
      path: 'admins',
      controller: 'admins/registrations',
      as: :admin_registration do
        get :cancel
      end
  end
  root 'visitors#index'
end
