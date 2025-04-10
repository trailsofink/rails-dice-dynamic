# .config/routes.rb

Rails.application.routes.draw do
  get('/', { controller: 'pages', action: 'home' })
  get('/dice/:num_of_dice/:num_of_sides', { controller: 'pages', action: 'roll' })
end
