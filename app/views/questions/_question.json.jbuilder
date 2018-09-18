json.extract! question, :id, :question_type, :question_text, :created_at, :updated_at
json.url question_url(question, format: :json)
