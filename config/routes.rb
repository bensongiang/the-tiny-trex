Rails.application.routes.draw do
	get 'welcome/index'

	get 'about' => 'welcome#about', as: 'about'
	get 'blog' => 'articles#index', as: 'blog'

	resources :articles
	
	root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
