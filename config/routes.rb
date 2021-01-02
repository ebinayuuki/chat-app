Rails.application.routes.draw do
  devise_for :users #deviseインストール時にルーティング生成
  get 'messages/index'
  root to: "messages#index"
  resources :users, only: [:edit, :update]  #ユーザ情報編集に必要なルーティングのみ記述
  resources :rooms, only: [:new, :create]
  
end
