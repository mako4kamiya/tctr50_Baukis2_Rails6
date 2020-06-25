Rails.application.routes.draw do
  namespace :staff do
    root "top#index"
    get "login" => "sessions#new", as: :login #ルーティングに名前をつける。erbでシンボルでURLパス参照できる。
    post "session" => "sessions#create", as: :session
    delete "session" => "sessions#destroy"
  end

  namespace :admin do
    root "top#index"
    get "login" => "sessions#new", as: :login #ルーティングに名前をつける。erbでシンボルでURLパス参照できる。
    post "session" => "sessions#create", as: :session
    delete "session" => "sessions#destroy"
  end

  namespace :customer do
    root "top#index"
  end
end
