class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.timestamp :appt_date
      t.string :style
      t.integer :barber_id
    end
  end
end
