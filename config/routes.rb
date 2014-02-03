J2c::Application.routes.draw do
  resources :blocks

  resources :canvases

  root 'canvases#show'
end
