json.extract! user_lab, :id, :user_id, :lab_id, :class_grade, :report_grade, :created_at, :updated_at
json.url user_lab_url(user_lab, format: :json)
