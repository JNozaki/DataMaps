Rails.application.routes.draw do
  root 'home#index'
  match '/' => 'home#index', via: :all
  match '/about' => 'home#about', via: :all
  match '/contact' => 'home#contact', via: :all
  match '/nor' => 'home#nor', via: :all
  match '/cologne' => 'home#cologne', via: :all
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
