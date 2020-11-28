class CreateIncompletes < ActiveRecord::Migration[6.0]
  def change
    create_table :incompletes do |t|
      t.references :project, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
