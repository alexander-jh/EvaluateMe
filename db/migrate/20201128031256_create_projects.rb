class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.references :group, null: false, foreign_key: true
      t.string :pname

      t.timestamps
    end
  end
end
