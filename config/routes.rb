Rails.application.routes.draw do

  post '/',action: :pp, controller: 'form'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end