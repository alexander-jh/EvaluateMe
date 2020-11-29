class AddCourseId < ActiveRecord::Migration[6.0]
  def change
    rename_column :courses, :section_id, :course_id
  end
end
