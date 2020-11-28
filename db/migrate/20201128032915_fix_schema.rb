class FixSchema < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :groups, :sections
    change_table :groups do |t|
      t.references :course, null: false, foreign_key: true
    end
    change_table :evaluations do |t|
      t.references :course, null: false, foreign_key: true
    end
  end
end
