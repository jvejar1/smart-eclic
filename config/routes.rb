Rails.application.routes.draw do
  resources :circuit_simulations


  get 'general_summaries', to:"general_summaries#index", as:'general_summaries'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :questions
  get 'student_activities/:id/students/:student_id/questions/:question_id', to:'student_activities#question_evaluation', as:'student_question_evaluation'
  get 'student_activities/:id/students/:student_id', to:'student_activities#evaluation', as:'student_evaluation'
  resources :user_labs
  resources :student_summaries, only: [:show,:index]
  get 'student_activities/:id/groups', to: 'student_activities#groups', as:'activity_evaluation'
  resources :student_activities, only: [:show,:index]
  resources :activities

  get '/answer/:question_id/bad_selection', to: 'answers#bad_selection', as:'bad_selection'
  get '/answer/:question_id', to: 'answers#new', as:'answer_question'

end
