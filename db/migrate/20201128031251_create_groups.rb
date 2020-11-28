class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :group_name
      t.references :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
