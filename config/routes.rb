Hogwartz::Application.routes.draw do

  root :to => 'houses#index'

  get   '/:house/students'    => 'houses#show',     as: :house

  get   '/students'           => 'students#index'
  post  '/students'           => 'students#create'
  get   '/students/new'       => 'students#new',    as: :new_student
  get   '/students/:id/edit'  => 'students#edit',   as: :edit_student
  get   '/students/:id'       => 'students#show',   as: :student
  put   '/students/:id'       => 'students#update'

  get   '/spells/new'         => 'spells#new',      as: :new_spell
  get   '/spells/:id'         => 'spells#show',     as: :spell
  post  '/spells'             => 'spells#create'

  get '/search'               => 'students#search', as: :search

end
