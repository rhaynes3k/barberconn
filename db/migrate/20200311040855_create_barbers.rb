class CreateBarbers < ActiveRecord::Migration
  def change
    create_table :barbers do |t|
      t.string :name
      t.string :location
      t.string :specialty
      t.string :username
      t.string :password_digest
    end
  end
end
