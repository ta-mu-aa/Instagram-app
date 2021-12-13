Rails.application.routes.draw do
  root 'instagram#home'
  get 'instagram/post_list'
  get 'instagram/about'
end
