Rails.application.routes.draw do
  resources :circuit_simulations
  get 'student_summaries/index'
  get 'student_summaries/show'
  get 'student_activities/show'
  get 'student_activities/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :questions
  get 'student_activities/:id/students/:student_id/questions/:question_id', to:'student_activities#question_evaluation', as:'student_question_evaluation'
  get 'student_activities/:id/students/:student_id', to:'student_activities#evaluation', as:'student_evaluation'


  resources :student_summaries, only: [:show,:index]
  get 'student_activities/:id/groups', to: 'student_activities#groups'
  resources :student_activities, only: [:show,:index]


  get '/answer/:question_id', to: 'answers#new', as:'answer_question'
end
