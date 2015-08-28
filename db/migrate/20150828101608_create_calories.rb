class CreateCalories < ActiveRecord::Migration
  def change
    create_table :calories do |t|
      t.integer :amount
      t.date :when
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
