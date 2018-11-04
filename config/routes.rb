Rails.application.routes.draw do
  resources :students, only: [:index, :show, :update]
  resources :posts, only: [:index, :show]

  get "/activate_student", to: 'students#update', as: 'activate_student'
end
