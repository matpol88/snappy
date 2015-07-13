class CreateWeddings < ActiveRecord::Migration
  def change
    create_table :weddings do |t|
      t.string :name
      t.string :date
      t.string :location
      t.integer :guests
      t.integer :user_id

      t.timestamps
    end
  end
end
