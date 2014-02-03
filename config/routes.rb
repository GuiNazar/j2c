J2c::Application.routes.draw do
  resources :canvases

  root 'canvases#show'
end
