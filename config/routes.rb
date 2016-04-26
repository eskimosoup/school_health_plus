NhsHullSchoolHealthPlus::Application.routes.draw do
  
  resources :pages
  resources :case_studies
  
  namespace :admin do
    chronicler_resources :pages do
      member do
        get 'set_home_page'
        get 'set_contact_page'
      end
    end
    chronicler_resources :case_studies
  end
  
  root :to => "pages#show#:id", :id => HomePage.slug
  
  mount Manticore::Engine => "/admin"
  
	match "/accessibility" => "application#accessibility"
	match "/contact_us"    => "application#contact_us"
	match "/thank_you"     => "application#thank_you"
	match "/site_map"      => "application#site_map"
	match "/search"        => "application#search"
  
end
