json.extract! course, :id, :section_id, :subject, :number, :name, :created_at, :updated_at
json.url course_url(course, format: :json)
