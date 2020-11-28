class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.integer :section_id
      t.string :subject
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end
