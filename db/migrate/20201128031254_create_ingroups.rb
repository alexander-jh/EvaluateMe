class CreateIngroups < ActiveRecord::Migration[6.0]
  def change
    create_table :ingroups do |t|
      t.references :user, null: false, foreign_key: true
      t.string :group
      t.string :references

      t.timestamps
    end
  end
end
