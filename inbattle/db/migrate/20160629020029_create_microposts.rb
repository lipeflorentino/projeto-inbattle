class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.integer :pontos

      t.timestamps null: false
    end
  end
end