class CreateInfoausers < ActiveRecord::Migration[5.2]
  def change
    create_table :infoausers do |t|
     t.string :arte
     t.string :cine 
     t.string :musica 
     t.integer :user_id
      t.timestamps
    end
  end
end
