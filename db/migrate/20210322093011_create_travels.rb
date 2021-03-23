class CreateTravels < ActiveRecord::Migration[6.1]
  def change
    create_table :travels do |t|
      t.string :name
      t.integer :contact
      t.integer :fare
      t.string :From_To
      t.integer :timing

      t.timestamps
    end
  end
end
