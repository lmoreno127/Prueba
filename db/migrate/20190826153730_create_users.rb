class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nombres
      t.string :apellidos
      t.integer :telefono
      t.string :email
      t.string :direccion
      t.timestamps
    end
  end
end
