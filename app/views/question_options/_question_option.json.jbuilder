json.extract! question_option, :id, :option_text, :question_id, :correct, :created_at, :updated_at
json.url question_option_url(question_option, format: :json)
