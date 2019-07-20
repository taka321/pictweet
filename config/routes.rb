Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]       #users_controllerに対してのresourcesメソッド
end
  #get   'tweets'      =>  'tweets#index'     #cツイート一覧画面
  #get   'tweets/new'  =>  'tweets#new'       #ツイート投稿画面
  #post  'tweets'      =>  'tweets#create'    #ツイート投稿機能
  #get   'users/:id'   =>  'users#show'    #Mypageへのルーティング
  #delete  'tweets/:id'  => 'tweets#destroy'
  #get   'tweets/:id/edit'  => 'tweets#edit'
  #patch   'tweets/:id'  => 'tweets#update'
  #get 'tweets/:id' => 'tweets#show'       #ツイート詳細画面