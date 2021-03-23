class CreatePassangers < ActiveRecord::Migration[6.1]
  def change
    create_table :passangers do |t|
      t.string :name
      t.integer :contact
      t.integer :age
      t.string :email_id
      t.string :From_To
      t.integer :timing

      t.timestamps
    end
  end
end
