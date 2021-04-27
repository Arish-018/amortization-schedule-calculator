# frozen_string_literal: true

Rails.application.routes.draw do
  resources :loans, only: [:new, :index, :create] do
    member do
      get 'generate_amortization_schedule'
    end
  end

  root 'loans#new'
end
