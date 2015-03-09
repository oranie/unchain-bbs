Rails.application.routes.draw do

  root to: 'sure#index'
  # get 'bbs/index' => 'bbs#index'
  get '/:id' => 'sure#show', as: :sure_show
  post '/sure/create' => 'sure#create'
  post '/post/create' => 'post#create'

end
