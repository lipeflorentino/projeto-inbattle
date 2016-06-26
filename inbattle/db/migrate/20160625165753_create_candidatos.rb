class CreateCandidatos < ActiveRecord::Migration
  def change
    create_table :candidatos do |t|
      t.text :endereco
      t.integer :pontos
      t.references :tema, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
