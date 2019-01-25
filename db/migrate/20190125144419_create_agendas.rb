class CreateAgendas < ActiveRecord::Migration[5.2]
  def change
    create_table :agendas do |t|
      t.references :user, foreign_key: true, null: false
      t.string :timezone, null: false, default: ''

      t.timestamps
    end
  end
end
