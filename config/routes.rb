Rails.application.routes.draw do

  get 'about', to: "pages#about", as: :about
  get 'contact', to: 'pages#contact', as: "contact_us"

  # get '/', to: "pages#home"
  root to: "pages#home"



  # VERB '/path', to: "controller#action"
end
