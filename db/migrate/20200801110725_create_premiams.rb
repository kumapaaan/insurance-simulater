class CreatePremiams < ActiveRecord::Migration[6.0]
  def change
    create_table :premiams do |t|
      t.string :name
      t.integer :age
      t.integer :sex
      t.string :plan
      t.string :fee
      t.string :company

      t.timestamps
    end
  end
end
