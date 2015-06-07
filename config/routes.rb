Rails.application.routes.draw do

  devise_for :users

    #nesting urls

    resources :projects do
       resources :subjects, module: :projects
   end

end
