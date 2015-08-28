class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.float :pounds
      t.date :when
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
