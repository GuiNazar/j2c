J2c::Application.routes.draw do
  resources :canvases

  root 'application#define_agenda'
end
