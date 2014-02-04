J2c::Application.routes.draw do
  resources :blocks do
    resources :points
    get 'move_up', as: 'move_up', on: :member
    get 'edit_attributes', as: 'edit_attributes', on: :member
  end

  resources :canvases do
    get 'refresh', as: 'refresh', on: :collection
  end

  root 'canvases#show'
end
