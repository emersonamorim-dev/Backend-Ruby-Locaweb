Rails.application.routes.draw { resources :planos }
Rails.application.routes.draw { get "/cloudvps", to: "cloud_vps#index" }
