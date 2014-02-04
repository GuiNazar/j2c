J2c::Application.routes.draw do
  resources :points

  resources :blocks do
    get 'move_up', as: 'move_up', on: :member
  end

  resources :canvases

  root 'canvases#show'
end
