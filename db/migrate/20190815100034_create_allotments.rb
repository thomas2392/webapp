class CreateAllotments < ActiveRecord::Migration[5.2]
  def change
    create_table :allotments do |t|
      t.string :name
      t.integer :number
      t.float :value
      t.references :venture, foreign_key: true

      t.timestamps
    end
  end
end
