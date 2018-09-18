json.extract! course, :id, :semester, :grade, :created_at, :updated_at
json.url course_url(course, format: :json)
