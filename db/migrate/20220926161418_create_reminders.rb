class CreateReminders < ActiveRecord::Migration[7.0]
  def change
    create_table :reminders do |t|
      t.string :titulo
      t.text :descricao
      t.date :data
      t.time :hora
      t.integer :prioridade
      t.boolean :status
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
