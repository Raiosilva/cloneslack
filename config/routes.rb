Rails.application.routes.draw do
  get 'team_users/create'

  get 'team_users/destroy'

  get 'talks/show'

  get 'channels/create'

  get 'channels/destroy'

  get 'channels/show'

  get 'teams/index'

  get 'teams/show'

  get 'teams/create'

  get 'teams/destroy'

  devise_for :users, :controllers => { registrations: 'registrations' }
end
