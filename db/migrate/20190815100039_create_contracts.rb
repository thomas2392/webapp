class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.integer :number
      t.float :total
      t.date :date
      t.string :client
      t.string :formofpayment
      t.references :allotment, foreign_key: true

      t.timestamps
    end
  end
end
