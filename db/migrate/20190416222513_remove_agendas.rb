class RemoveAgendas < ActiveRecord::Migration[5.2]
  def change
    drop_table(:agendas)
  end
end
