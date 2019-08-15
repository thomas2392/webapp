class CreateVentures < ActiveRecord::Migration[5.2]
  def change
    create_table :ventures do |t|
      t.string :name
      t.decimal :readjust
      t.string :street
      t.string :neighborhood
      t.string :city

      t.timestamps
    end
  end
end
