class CreateTemas < ActiveRecord::Migration
  def change
    create_table :temas do |t|
      t.string :conteudo
      t.integer :pontos
      t.integer :user_id

      t.timestamps null: false
    end
	add_index :temas, [:user_id, :created_at]
  end
end
