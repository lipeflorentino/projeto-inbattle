class CreateTemas < ActiveRecord::Migration
  def change
    create_table :temas do |t|
      t.text :tema
	  t.integer :pontos
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
	    add_index :temas, [:user_id, :created_at]
  end
end
